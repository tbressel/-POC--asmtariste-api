/////////////////////////////////////////////////////
///////////  IMPORTATIONS & CONFIGURATION ///////////
/////////////////////////////////////////////////////

// Express importation & definition
import express, { Express, Request, Response, NextFunction } from "express";
const api: Express = express();

// Import promisify to convert connection.query into a function that returns a promise
import { promisify } from 'util';

import { authToken } from "../../functions/token";

/////////////////////////////////////////////////////
///////////    MIDDLEWARES IMPORTATIONS   ///////////
/////////////////////////////////////////////////////

// CORS middleware
const cors = require('cors');
import CorsConfig from "../../middlewares/CorsConfig";
const corsOptions = CorsConfig.getCorsConfig();
api.use(cors(corsOptions));


// Body Parser Middleware to check data body from http request & configuration
import { urlEncodedParserMiddleware, jsonParserMiddleware } from "../../middlewares/body-parser";
api.use(urlEncodedParserMiddleware);
api.use(jsonParserMiddleware);

/////////////////////////////////////////////////////
///////////    LIBRARIES   IMPORTATIONS   ///////////
/////////////////////////////////////////////////////

// Mysql library importation and pool connexion creation
import DatabaseConfig from "../../classes/DatabaseConfig";
import mysql, { PoolConnection } from 'mysql';
import { isMaxConnectionReached } from '../../functions/pool';
const dbconnect = mysql.createPool(DatabaseConfig.getDbConfig());

// importation of notifications messages
import { notificationMessages } from "../../datas/notifications";
import { getJsonResponse } from "../../functions/notifications";


////////////////////////////////////////
////////   CREATE CERTIFICATE   //////////
///////////////////////////////////////

api.post('/create-certificate/:id', authToken, (req: any, res: Response) => {

    // Get values from the request params
    const id_articles: number = req.params.id;

    // Get values from the request body
    const isCertificate: boolean = req.body.certificate;
    const note: number = req.body.note;

    // check if the values are not empty
    if (!isCertificate || id_articles === undefined) {
        getJsonResponse(res, 500, "missing-datas", notificationMessages, false);
        return;
    }

    // Get the id user from the token
    const id_users: number = req.results.id_user;
    const firstname: string | undefined = req.results.firstname;
    const lastname: string | undefined = req.results.lastname;
    const username: string = req.results.username;

    // Define the date of creation
    const creationDateValue: Date = new Date();

    // Create the connection to the database
    dbconnect.getConnection((error: Error, connection: any) => {
        // Check if we can connect to the database
        if (error) {
            getJsonResponse(res, 500, "dbconnect-error", notificationMessages, false);
            return;
        }

        // Check if we reached the maximum of connection allowed
        if (isMaxConnectionReached(dbconnect)) {
            getJsonResponse(res, 500, "maxconnect-reached", notificationMessages, false);
            connection.release();
            return;
        }

        // Prepare the first query to check if the user has already a certificate for this article
        const sqlQuery0: string = `SELECT id_certificates FROM to_graduate WHERE id_users = ? AND id_articles = ?`;

        // Execute the first query
        connection.query(sqlQuery0, [id_users, id_articles], (error: Error, results: Object) => {
            if (error) {
                getJsonResponse(res, 500, "request-failure", notificationMessages, false);
                connection.release();
                return;
            }

            const queryResult = (results as Array<any>).length;


            // If the user has already a certificate for this article
            if (queryResult > 0) {
                getJsonResponse(res, 500, "certificate-already-exist", notificationMessages, false);
                connection.release();
                return;
            } else {

                // Start a transaction to execute or rollback the both queries
                connection.beginTransaction(async (error: Error) => {
                    if (error) {
                        getJsonResponse(res, 500, "transaction-start-failed", notificationMessages, false);
                        connection.release();
                        return;
                    }


                    // Convert connection.query into a function that returns a promise
                    const query = promisify(connection.query).bind(connection);

                    try {
                        // Prepare the 1st SQL query
                        const sqlQuery1: string = `SELECT title FROM articles WHERE id_articles = ?`;

                        // Execute the 1st SQL query
                        const queryResult1: any = await query(sqlQuery1, [id_articles]);

                        const title: string = queryResult1[0].title;

                        // Prepare the 2nd SQL query
                        const sqlQuery2: string = `INSERT INTO certificates (creationDate, note) VALUES (?, ?)`;

                        // Execute the 2nd SQL query
                        const queryResult2: any = await query(sqlQuery2, [creationDateValue, note]);

                        // Get this ID where the quesry was created
                        const id_certificates: number = queryResult2.insertId;

                        // Prepare the 3rd SQL query
                        const sqlQuery3: string = `INSERT INTO to_graduate (id_articles, id_users, id_certificates) VALUES (?, ?, ?)`;

                        // Execute the 3rd SQL query
                        const queryResult3: any = await query(sqlQuery3, [id_articles, id_users, id_certificates]);

                        // If all queries succeeded, commit the transaction
                        connection.commit((error: Error) => {
                            if (error) {
                                return connection.rollback(() => {
                                    throw error;
                                });
                            }
                        });

                        res.json({
                            message: 'Certificat créé avec succès',
                            title: title,
                            date: creationDateValue,
                            username: username,
                        });
                    }
                    catch (error) {
                        // If an error occurred, rollback the transaction
                        connection.rollback(() => {
                            getJsonResponse(res, 500, "certificate-failure", notificationMessages, false);
                            return;
                        });
                    } finally {
                        connection.release();

                    }
                });
            }
        });
    });
});


////////////////////////////////////////
////////   ALL CERTIFICATES   //////////
///////////////////////////////////////
api.get('/all-certificates/', authToken, (req: any, res: Response) => {

    // Get the id user from the token
    const id_users: number = req.results.id_user;

    // check if the values are not empty
    if (id_users === undefined) {
        getJsonResponse(res, 500, "missing-datas", notificationMessages, false);
        return;
    }

    // Create the connection to the database
    dbconnect.getConnection((error: Error, connection: any) => {
        // Check if we can connect to the database
        if (error) {
            getJsonResponse(res, 500, "dbconnect-error", notificationMessages, false);
            return;
        }

        // Check if we reached the maximum of connection allowed
        if (isMaxConnectionReached(dbconnect)) {
            getJsonResponse(res, 500, "maxconnect-reached", notificationMessages, false);
            connection.release();
            return;
        }

        // Prepare the query to get the certificates
        const sqlQuery: string = `SELECT certificates.id_certificates, certificates.note, certificates.creationDate, users.username, articles.title
                                    FROM to_graduate
                                    JOIN users USING (id_users)
                                    JOIN articles USING (id_articles)
                                    JOIN certificates USING (id_certificates)`;

        // Execute the query
        connection.query(sqlQuery, [id_users], (error: Error, results: Object) => {
            if (error) {
                getJsonResponse(res, 500, "request-failure", notificationMessages, false);
                connection.release();
                return;
            } else {
                connection.release();
                // Send the response to the client
                res.status(200).json({
                    body: results
                });
            }
        });
    });
});


///////////////////////////////////////////
////////   AVERAGE CERTIFICATES   /////////
///////////////////////////////////////////
api.get('/average-certificate/', (req: any, res: Response) => {

    // Create the connection to the database
    dbconnect.getConnection((error: Error, connection: any) => {
        // Check if we can connect to the database
        if (error) {
            getJsonResponse(res, 500, "dbconnect-error", notificationMessages, false);
            return;
        }

        // Check if we reached the maximum of connection allowed
        if (isMaxConnectionReached(dbconnect)) {
            getJsonResponse(res, 500, "maxconnect-reached", notificationMessages, false);
            connection.release();
            return;
        }

        // Prepare the query to get the certificates
        const sqlQuery: string = `SELECT 
    users.id_users, 
    users.username,
 JSON_ARRAYAGG(
        JSON_OBJECT(
            'note', certificates.note,
            'medal', 
            CASE 
                WHEN certificates.note <= 15 THEN 'green-bronze.webp'
                WHEN certificates.note BETWEEN 16 AND 18 THEN 'green-silver.webp'
                WHEN certificates.note >= 19 THEN 'green-gold.webp'
                ELSE 'none'
            END
        )
    ) AS notes,
    
    SUM(certificates.note) / (
       SELECT
			COUNT(articles.id_articles) as total_articles
		FROM
			articles
		WHERE
			articles.id_categories = 1 ) AS moyenne
FROM 
    users 
JOIN 
    to_graduate ON users.id_users = to_graduate.id_users
JOIN 
    certificates ON to_graduate.id_certificates = certificates.id_certificates
JOIN 
    articles ON to_graduate.id_articles = articles.id_articles
WHERE 
    articles.id_categories = 1
GROUP BY 
    users.id_users, 
    users.username
ORDER BY
    moyenne DESC;
`;

        // Execute the query
        connection.query(sqlQuery, (error: Error, results: Object) => {
            if (error) {
                getJsonResponse(res, 500, "request-failure", notificationMessages, false);
                connection.release();
                return;
            } else {

                // const queryResult = (results as Array<any>);
                // let medalType: string = '';
                // let medalColour: string = '';
                // let courseLevel: number = 1;
                // let medalUrl: string = '';

                // for (const item of queryResult) {
                  
                //     // Détermination du type de médaille basée sur la note
                //     if (item.note <= 15) {
                //       medalType = 'bronze';
                //     } else if (item.note >= 16 && item.note <= 18) {
                //       medalType = 'silver';
                //     } else if (item.note >= 19) {
                //       medalType = 'gold';
                //     }
                  
                //     // Détermination de la couleur de la médaille basée sur le niveau du cours
                //     switch (courseLevel) {
                //       case 1:
                //         medalColour = 'green';
                //         break;
                //       case 2:
                //         medalColour = 'yellow';
                //         break;
                //       case 3:
                //         medalColour = 'orange';
                //         break;
                //       case 4:
                //         medalColour = 'cyan';
                //         break;
                //       case 5:
                //         medalColour = 'blue';
                //         break;
                //       case 6:
                //         medalColour = 'red';
                //         break;
                //       default:
                //         medalColour = 'unknown'; 
                //     }
                  
                //     // Construction de l'URL de la médaille
                //     medalUrl = `${medalType}-${medalColour}.webp`;
                  
                //     // Ajout de la clé "medal" avec l'URL de la médaille au résultat
                //     item.medal = medalUrl;
                //   }


                connection.release();
                // Send the response to the client
                res.status(200).json({
                    body: results                    
                });
            }
        });
    });
});
////////////////////////////////////////
////////   LAST CERTIFICATES   /////////
///////////////////////////////////////
api.get('/last-certificates/', (req: any, res: Response) => {

    // Create the connection to the database
    dbconnect.getConnection((error: Error, connection: any) => {
        // Check if we can connect to the database
        if (error) {
            getJsonResponse(res, 500, "dbconnect-error", notificationMessages, false);
            return;
        }

        // Check if we reached the maximum of connection allowed
        if (isMaxConnectionReached(dbconnect)) {
            getJsonResponse(res, 500, "maxconnect-reached", notificationMessages, false);
            connection.release();
            return;
        }

        // Prepare the query to get the certificates
        const sqlQuery: string = `SELECT certificates.note, certificates.creationDate, users.username, articles.title
                                    FROM to_graduate
                                    JOIN users USING (id_users)
                                    JOIN articles USING (id_articles)
                                    JOIN certificates USING (id_certificates)
                                    ORDER BY certificates.creationDate DESC`;
        

        // Execute the query
        connection.query(sqlQuery, (error: Error, results: Object) => {
            if (error) {
                getJsonResponse(res, 500, "request-failure", notificationMessages, false);
                connection.release();
                return;
            } else {

                const queryResult = (results as Array<any>);
                let medalType: string = '';
                let medalColour: string = '';
                let courseLevel: number = 1;
                let medalUrl: string = '';

                for (const item of queryResult) {
                  
                    // Détermination du type de médaille basée sur la note
                    if (item.note <= 15) {
                      medalType = 'bronze';
                    } else if (item.note >= 16 && item.note <= 18) {
                      medalType = 'silver';
                    } else if (item.note >= 19) {
                      medalType = 'gold';
                    }
                  
                    // Détermination de la couleur de la médaille basée sur le niveau du cours
                    switch (courseLevel) {
                      case 1:
                        medalColour = 'green';
                        break;
                      case 2:
                        medalColour = 'yellow';
                        break;
                      case 3:
                        medalColour = 'orange';
                        break;
                      case 4:
                        medalColour = 'cyan';
                        break;
                      case 5:
                        medalColour = 'blue';
                        break;
                      case 6:
                        medalColour = 'red';
                        break;
                      default:
                        medalColour = 'unknown'; 
                    }
                  
                    // Construction de l'URL de la médaille
                    medalUrl = `${medalType}-${medalColour}.webp`;
                  
                    // Ajout de la clé "medal" avec l'URL de la médaille au résultat
                    item.medal = medalUrl;
                  }


                connection.release();
                // Send the response to the client
                res.status(200).json({
                    body: results                    
                });
            }
        });
    });
});


////////////////////////////////////////
////////   DELETE CERTIFICATE   //////////
///////////////////////////////////////

api.delete('/delete-certificate/:id', authToken, (req: Request, res: Response) => {

    // get the id from the slug
    let id: string | number = req.params.id;
    id = parseInt(id);

    // Check if id exists
    if (!id || id === undefined || id === null) {
        getJsonResponse(res, 500, "missing-datas", notificationMessages, false);
        return;
    }

    // Establish a connection to the database
    dbconnect.getConnection((error: Error | null, connection: any) => {
        // Check if we can connect to the database
        if (error) {
            getJsonResponse(res, 500, "dbconnect-error", notificationMessages, false);
            return;
        }

        // Check if we reached the maximum of connection allowed
        if (isMaxConnectionReached(dbconnect)) {
            getJsonResponse(res, 500, "maxconnect-reached", notificationMessages, false);
            connection.release();
            return;
        }

        // Start a transaction to execute or rollback the both queries
        connection.beginTransaction(async (error: Error) => {
            if (error) {
                getJsonResponse(res, 500, "transaction-start-failed", notificationMessages, false);
                connection.release();
                return;
            }

            // Convert connection.query into a function that returns a promise 
            const query = promisify(connection.query).bind(connection);

            try {

                // prepare the zero query
                const sql1: string = "DELETE FROM to_graduate WHERE id_certificates = ?;";
                // Execute the 0 query
                const resultsQuery1 = await query(sql1, [id]);


                // prepare the next query
                const sql2: string = `DELETE FROM certificates WHERE id_certificates = ?`;

                // Execute the query
                const resultsQuery2 = await query(sql2, [id]);



                // If all queries succeeded, commit the transaction
                connection.commit((error: Error) => {
                    if (error) {
                        return connection.rollback(() => {
                            throw error;
                        });
                    }
                });

                // Send the response to the client
                res.status(200).json({
                    message: "Certificat supprimé avec succès"
                });

            } catch (error) {
                // If an error occurred, rollback the transaction
                connection.rollback(() => {
                    getJsonResponse(res, 500, "delete-failure", notificationMessages, false);

                });
            } finally {
                // Release the connection
                connection.release();
            }
        });
    });
});


////////////////////////////////////////
////////   SHOW CERTIFICATE   //////////
///////////////////////////////////////
api.get('/get-certificates/', authToken, (req: any, res: Response) => {

    // Get the id user from the token
    const id_users: number = req.results.id_user;

    // check if the values are not empty
    if (id_users === undefined) {
        getJsonResponse(res, 500, "missing-datas", notificationMessages, false);
        return;
    }

    // Create the connection to the database
    dbconnect.getConnection((error: Error, connection: any) => {
        // Check if we can connect to the database
        if (error) {
            getJsonResponse(res, 500, "dbconnect-error", notificationMessages, false);
            return;
        }

        // Check if we reached the maximum of connection allowed
        if (isMaxConnectionReached(dbconnect)) {
            getJsonResponse(res, 500, "maxconnect-reached", notificationMessages, false);
            connection.release();
            return;
        }

        // Prepare the query to get the certificates
        const sqlQuery: string = `SELECT tg.id_certificates, c.creationDate, c.note, a.title FROM to_graduate tg
        JOIN articles a USING (id_articles)
        JOIN certificates c USING (id_certificates)
        WHERE tg.id_users = ?`;

        // Execute the query
        connection.query(sqlQuery, [id_users], (error: Error, results: Object) => {
            if (error) {
                getJsonResponse(res, 500, "request-failure", notificationMessages, false);
                connection.release();
                return;
            } else {
                connection.release();
                // Send the response to the client
                res.status(200).json({
                    body: results
                });
            }
        });
    });
});


////////////////////////////////////////
////////   VIEW CERTIFICATE   //////////
///////////////////////////////////////
api.get('/view-certificate/:id', authToken, (req: any, res: Response) => {

    const id_certificates: number = req.params.id;

    // Get the id user from the token
    const id_users: number = req.results.id_user;

    // check if the values are not empty
    if (!id_certificates || id_users === undefined) {
        getJsonResponse(res, 500, "missing-datas", notificationMessages, false);
        return;
    }

    // Create the connection to the database
    dbconnect.getConnection((error: Error, connection: any) => {
        // Check if we can connect to the database
        if (error) {
            getJsonResponse(res, 500, "dbconnect-error", notificationMessages, false);
            return;
        }

        // Check if we reached the maximum of connection allowed
        if (isMaxConnectionReached(dbconnect)) {
            getJsonResponse(res, 500, "maxconnect-reached", notificationMessages, false);
            connection.release();
            return;
        }

        // Prepare the query to get the certificates
        const sqlQuery: string = `SELECT tg.id_certificates, c.creationDate, a.title, u.username
FROM to_graduate tg
JOIN articles a ON tg.id_articles = a.id_articles
JOIN certificates c ON tg.id_certificates = c.id_certificates
JOIN users u ON tg.id_users = u.id_users
WHERE tg.id_certificates = ? AND tg.id_users = ?;`;

        // Execute the query
        connection.query(sqlQuery, [id_certificates, id_users], (error: Error, results: Object) => {
            if (error) {
                getJsonResponse(res, 500, "request-failure", notificationMessages, false);
                connection.release();
                return;
            } else {

                const queryResult = (results as Array<any>);

                // Check if there is any result
                if (queryResult.length === 0) {
                    getJsonResponse(res, 500, "certificate-not-found", notificationMessages, false);
                    connection.release();
                    return;
                } else {


                    connection.release();
                    // Send the response to the client
                    res.status(200).json({
                        username: queryResult[0].username,
                        firstname: queryResult[0].firstname,
                        lastname: queryResult[0].lastname,
                        creationdate: queryResult[0].creationDate,
                        title: queryResult[0].title,
                    });
                }
            }
        });
    });
});


////////////////////////////////////////
////////   SUBMIT RESULTS   //////////
///////////////////////////////////////
api.post('/submit-results/:id', authToken, (req: any, res: Response) => {

    const id_articles: number = req.params.id;

    // check if the values are not empty
    if (id_articles === undefined) {
        getJsonResponse(res, 500, "missing-datas", notificationMessages, false);
        return;
    }

    // Get values from the request body (results form from user)
    const formResults: any = req.body;

    // check if the values are not empty
    if (formResults.length === 0) {
        getJsonResponse(res, 500, "no-questions", notificationMessages, false);
        return;
    }

    // define initial values (to store the good answers)
    let choicesResults: number[] = [];

    // define initial array (to store the answers from the user)
    let choicesForms: number[] = [];
    // full the array only with user choices (contains id_choices)        
    for (const item of formResults) {
        choicesForms.push(item.id_choice);
    }


    // Create the connection to the database
    dbconnect.getConnection((error: Error, connection: any) => {
        // Check if we can connect to the database
        if (error) {
            getJsonResponse(res, 500, "dbconnect-error", notificationMessages, false);
            return;
        }

        // Check if we reached the maximum of connection allowed
        if (isMaxConnectionReached(dbconnect)) {
            getJsonResponse(res, 500, "maxconnect-reached", notificationMessages, false);
            connection.release();
            return;
        }

        // Start a transaction to execute or rollback the both queries
        connection.beginTransaction(async (error: Error) => {
            if (error) {
                getJsonResponse(res, 500, "transaction-start-failed", notificationMessages, false);
                connection.release();
                return;
            }

            // Convert connection.query into a function that returns a promise
            const query = promisify(connection.query).bind(connection);

            try {

                // prepare the first query (to get the number of questions in the article)
                const sqlQuery0: string = `SELECT id_questions FROM questions WHERE id_articles = ?`;

                // Execute the first query
                let queryResult0 = await query(sqlQuery0, [id_articles]);

                const questionsArticle: number = queryResult0.length;

                // prepare the second query (to get the good answers)
                const sql: string = `SELECT id_choices FROM choices WHERE id_questions = ? AND answer = 1`;

                for (const item of formResults) {

                    // For each question, get the good answers
                    let queryResult = await query(sql, [item.id_question]);

                    // for each good answer, push the id_choices in the array
                    for (const choice of queryResult) {
                        choicesResults.push(choice.id_choices);
                    }
                };

                // remove duplicates from the array (if some questions have multiple good answers)
                // Good answers : 
                choicesResults = [...new Set(choicesResults)];

                // compare number of goods answers (choicesResults) with user answers (choicesForms)
                const goodAnswers = choicesResults.filter(value => choicesForms.includes(value));

                // compare number of wrong answers (choicesForms) with user answers (choicesResults)
                const wrongAnswers = choicesForms.filter(value => !choicesResults.includes(value));

                // calculate the total points
                let totalPoints: number = goodAnswers.length;
                // let totalPoints: number = goodAnswers.length - wrongAnswers.length;

                // prevent negative points
                if (totalPoints < 0) {
                    totalPoints = 0;
                }

                // calculate the total on 20
                let totalSurVingt: number = Math.round(totalPoints * 20 / choicesResults.length);
                // If all queries succeeded, commit the transaction
                connection.commit((error: Error) => {
                    if (error) {
                        return connection.rollback(() => {
                            throw error;
                        });
                    }
                });


                if (queryResult0.length === 0) {
                    getJsonResponse(res, 500, "no-questions", notificationMessages, false);
                    return;
                }

                if (questionsArticle > formResults.length) {
                    getJsonResponse(res, 500, "answers-missing", notificationMessages, false);
                    return;
                }

                // Send the response to the client
                res.status(200).json({
                    goodAnswers: goodAnswers,
                    wrongAnswers: wrongAnswers,
                    formResults: choicesForms,
                    answers: choicesResults,
                    note: totalSurVingt
                });
            } catch (error) {
                // If an error occurred, rollback the transaction
                connection.rollback(() => {
                    console.error('Erreur : ', error);
                    res.status(500).json({
                        message: "Une erreur est survenue lors de l'insertion",
                        error: error
                    });
                });
            } finally {
                // Release the connection
                connection.release();
            }
        });
    });
});
export default api;

