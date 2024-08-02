-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 02 août 2024 à 18:23
-- Version du serveur : 10.6.17-MariaDB-cll-lve
-- Version de PHP : 8.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `c1509222c_asmtariste`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id_articles` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `cover` varchar(128) DEFAULT NULL,
  `isDisplay` tinyint(1) DEFAULT NULL,
  `id_categories` int(11) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id_articles`, `title`, `creation_date`, `description`, `cover`, `isDisplay`, `id_categories`, `id_users`) VALUES
(1, 'ASMtariSTe est ouvert !', '2024-06-27', 'ASMtariste ouvre ses portes pour tout ceux qui souhaitent apprendre la programmation en assembleur 68000 sur Atari ST. ', '1720686646713.png', 1, 2, 1),
(2, 'À propos du BIOS', '2024-06-27', 'Le BIOS (Basic Input/Output System) représente l\'interface de plus bas niveau entre le système d\'exploitation de l\'Atari et le matériel, et est appelé via le Trap #13 du 680X0. Il est préférable que ces fonctions ne soient pas utilisées par les programmes applicatifs, car des fonctions beaucoup plus puissantes à un niveau supérieur sont disponibles pour fournir de meilleures alternatives.', '1720686675098.jpg', 1, 3, 1),
(3, 'Le Système d\'Exploitation TOS', '2024-06-27', 'Le système d\'exploitation TOS (The Operating System) peut être subdivisé en différentes sections. La communication avec les utilisateurs est réalisée via GEM, qui offre une interface utilisateur confortable et se compose des fonctions AES et VDI.', '1720686675098.jpg', 1, 3, 1),
(4, 'Savoir configurer les outils de développement - Partie 1', '2024-06-27', 'Avant toute chose, pour commencer à écrire du code, tu auras besoin de plusieurs outils et il te faudra apprendre à les utiliser. Ces outils peuvent être soit sur PC, soit directement sur Atari ST.', '1719526785197.png', 1, 1, 1),
(5, 'L\'octet sous toutes ses formes', '2024-07-20', 'La maîtrise des conversions entre les systèmes décimal, binaire et hexadécimal est cruciale pour comprendre et manipuler les données en informatique. Nous reviendrons sur ces concepts pour démontrer leurs avantages dans divers contextes. Nous parlerons ici des différentes façons d\'écrire la valeur d\'un octet. Sans connaissance à ce sujet, vous n\'irez pas très loin dans votre apprentissage de l\'assembleur.', '1721474650895.webp', 1, 1, 1),
(6, 'Miracle Boy in Dragon Land : Le projet d\'un passionné sur Atari ST', '2024-07-22', 'Le projet Miracle Boy in Dragon Land a officiellement débuté à la mi-août 2022, avec l\'ambition de créer un jeu en assembleur 68000 pour Atari ST. Samuel Blanchard, l\'initiateur du projet, a rapidement rassemblé une communauté de 302 membres passionnés qui suivent avec enthousiasme ce jeu prometteur, qui s\'annonce être une véritable pépite pour les fans de rétro-gaming sur Atari ST.', '1721664001193.png', 1, 2, 1),
(7, 'Messages d\'erreur du BIOS & GEMDOS', '2024-07-22', 'Les erreurs sont signalées par le BIOS et le XBIOS sous forme de valeurs négatives. Les erreurs sont signalées par GEMDOS sous forme de valeurs LONGUES négatives. La liste suivante contient tous les messages d\'erreur connus.', '1721671688947.jpg', 1, 3, 1),
(8, 'Savoir configurer les outils de développement - Partie 2', '2024-07-25', 'Après une première partie qui concernait principalement l\'environnement de travail lié à l\'utilisation de l\'émulateur, je vais te guider pour apprendre à installer le logiciel Hisoft DevPac 3. Mais aussi le configurer un minimum avec le GEM pour avoir un outils rapide et érgonomique.', '1721929777601.jpg', 1, 1, 1),
(9, 'Créer un disque dur virtuel  ou \"RAM Disk\"', '2024-07-26', 'Vous avez probablement un Atari chez vous avec un lecteur de disquette (ou un Gotek en remplacement), mais sans disque dur ni Ultra Satan. C\'est dommage car ces périphériques ont l\'avantage d\'être bien plus rapides que les supports disquettes. Si c\'est pour un besoin ponctuel, vous pouvez créer un espace mémoire dans la RAM, où vous pourrez stocker vos fichiers sur lesquels vous désirez travailler, comme si c\'était un disque dur. On appelle cela un RAM Disk.', '1722027028454.png', 1, 4, 1),
(10, 'La RAM et la ROM', '2024-07-27', 'Précédemment, nous avons parlé des octets qui sont stockés dans la RAM (mémoire vive), où le 68000 peut aller lire ces données temporaires. Cependant, il peut aussi aller lire dans la ROM (mémoire morte), qui, contrairement à la RAM, contient des données permanentes.', '1722072708519.png', 1, 1, 1),
(11, 'Les registres du 68000', '2024-07-27', 'On y est ! Tu vas pouvoir commencer à taper tes premières lignes de code en assembleur et, pour cela, je vais t\'apprendre à manipuler des données. Nous allons beaucoup utiliser le débogueur Monst que DevPac nous offre, car tu pourras concrètement voir sous tes yeux les données se transformer et se déplacer en suivant ton programme pas à pas.', '1722101341272.png', 1, 1, 1),
(12, 'Les modes d\'adressage du 68000', '2024-07-30', 'Maintenant que vous vous êtes familiarisé avec les différents Registres du 68000, je vais définir les différents MODES D\'ADRESSAGE.\r\n\r\nLes modes d\'adressage permettent de modifier les valeurs du PC, du SP, du SR et la pile système.\r\n\r\nJe prendrai les instructions MOVE (permet de déplacer l\'opérande source jusqu\'à l\'opérande destination) et ADD (ajoute l\'opérande source à son opérande destination) pour illustrer les différents types de modes d\'adressage.', '1722345975616.jpg', 1, 3, 1),
(13, 'Capture et conversion d\'image NEO, PI1 et PC1', '2024-08-01', 'Certaines manipulations comme celle-ci sur du matériel réel auraient nécessité l\'utilisation de l\'Ultimate Ripper, un matériel très rare à trouver de nos jours. Heureusement, les émulateurs simplifient cette partie du travail, même si certains outils purement ST restent encore très utiles. \r\nLa finalité est de pouvoir utiliser ces images dans vos productions.', '1722513288165.png', 1, 4, 1),
(14, 'Afficher une image', '2024-08-02', 'On y est enfin ! Ce n\'était pas trop tôt, mais il fallait s\'assurer que vous ayez les prérequis avant de commencer votre premier programme en assembleur. Cette étape est importante car nous allons également apprendre à structurer un programme. En parlant de prérequis, assurez-vous de savoir utiliser des outils tels que Deluxe Paint par exemple. Si ce n\'est pas le cas, allez jeter un œil dans la section tutoriel \"Capture et conversion d\'image NEO, PI1 et PC1\".', '1722549828686.webp', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_categories` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_categories`, `name`) VALUES
(1, 'coding'),
(2, 'news'),
(3, 'doc'),
(4, 'tuto');

-- --------------------------------------------------------

--
-- Structure de la table `certificates`
--

CREATE TABLE `certificates` (
  `id_certificates` int(11) NOT NULL,
  `creationDate` date DEFAULT NULL,
  `note` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `certificates`
--

INSERT INTO `certificates` (`id_certificates`, `creationDate`, `note`) VALUES
(8, '2024-07-16', 20),
(9, '2024-07-16', 20),
(10, '2024-07-19', 16),
(11, '2024-07-22', 20),
(12, '2024-07-22', 20),
(15, '2024-07-25', 20),
(16, '2024-07-27', 20),
(17, '2024-07-28', 20),
(18, '2024-07-28', 18),
(20, '2024-07-29', 18),
(21, '2024-08-01', 16),
(22, '2024-08-01', 17),
(23, '2024-08-01', 16),
(24, '2024-08-01', 20),
(25, '2024-08-01', 20);

-- --------------------------------------------------------

--
-- Structure de la table `choices`
--

CREATE TABLE `choices` (
  `id_choices` int(11) NOT NULL,
  `choice_name` varchar(256) DEFAULT NULL,
  `answer` tinyint(1) DEFAULT NULL,
  `id_questions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `choices`
--

INSERT INTO `choices` (`id_choices`, `choice_name`, `answer`, `id_questions`) VALUES
(1, 'Un logiciel qui imite le fonctionnement d\'un autre', 1, 1),
(2, 'Un programme de traitement de texte', 0, 1),
(3, 'Un outil de gestion de fichiers', 0, 1),
(4, 'Stocker des fichiers dans la RAM', 0, 2),
(5, 'Augmenter la capacité de mémoire', 0, 2),
(6, 'A émuler un disque durs avec des cartes SD', 1, 2),
(7, 'Le langage binaire', 1, 3),
(8, 'L\'assembleur', 0, 3),
(9, 'Le langage C', 0, 3),
(10, 'Le langage Basic', 0, 3),
(11, 'Écrire du code source', 1, 4),
(12, 'Compiler des programmes', 0, 4),
(13, 'Déboguer des applications', 0, 4),
(14, 'Traduire du code assembleur en code machine', 1, 5),
(15, 'Optimiser le code source', 0, 5),
(16, 'Interpréter le code source', 0, 5),
(17, 'Dans la mémoire RAM', 0, 6),
(18, 'Dans un fichier exécutable', 1, 6),
(19, 'Dans un fichier texte', 0, 6),
(20, 'Dans la mémoire RAM', 0, 7),
(21, 'Dans un fichier source', 1, 7),
(22, 'Sur un disque dur externe', 0, 7),
(23, 'DavePac', 0, 8),
(24, 'ASM-One', 0, 8),
(25, 'HiSoft DevPac 3', 1, 8),
(26, 'Le bureau EmuTOS', 0, 9),
(27, 'Le bureau GEM', 1, 9),
(28, 'Le bureau TOS', 0, 9),
(29, 'Le système d\'exploitation de l\'Atari ST', 1, 10),
(30, 'Un type de mémoire', 0, 10),
(31, 'The Original System', 0, 10),
(32, 'Un type de périphérique de stockage', 0, 11),
(33, 'Un protocole de communication', 1, 11),
(34, 'Une carte graphique', 0, 11),
(35, '203', 1, 12),
(36, '191', 0, 12),
(37, '196', 0, 12),
(38, '178', 0, 12),
(39, '$4F', 0, 13),
(40, '$4B', 1, 13),
(41, '$6B', 0, 13),
(42, '$5B', 0, 13),
(43, '%10010011', 0, 14),
(44, '%11000011', 0, 14),
(45, '%10100001', 0, 14),
(46, '%10100011', 1, 14),
(47, '192', 0, 15),
(48, '128', 0, 15),
(49, '224', 1, 15),
(50, '240', 0, 15),
(51, '64', 0, 16),
(52, '128', 1, 16),
(53, '32', 0, 16),
(54, '16', 0, 16),
(55, '%00000101', 1, 17),
(56, '%00001010', 0, 17),
(57, '%00001111', 0, 17),
(58, '%00000000', 0, 17),
(59, '$FE', 0, 18),
(60, '$FF', 1, 18),
(61, '$F0', 0, 18),
(62, '$00', 0, 18),
(63, '%10100111', 1, 19),
(64, '%10110011', 0, 19),
(65, '%10011111', 0, 19),
(66, '%11010011', 0, 19),
(67, '%0100', 0, 20),
(68, '%1010', 0, 20),
(69, '%1100', 0, 20),
(70, '%0110', 1, 20),
(71, '511', 1, 21),
(72, '255', 0, 21),
(73, '256', 0, 21),
(74, '512', 0, 21),
(75, 'Glisser le fichier zip dans la fenêtre de l\'émulateur', 0, 22),
(76, 'Cliquer une seule fois sur l\'icône qui représente un lecteur de disquette.', 0, 22),
(77, 'Double cliquer sur l\'icône qui représente un lecteur de disquette.', 0, 22),
(78, 'Rien car çà charge tout seul au démarrage, Atari c\'est magique !', 0, 22),
(79, 'Sur une disquette vierge', 0, 23),
(80, 'Sur le disque dure', 1, 23),
(81, 'Dans une RAM disk', 1, 23),
(82, 'Control + Shift + S', 0, 24),
(83, 'Shift + Alternate + S', 1, 24),
(84, 'Alternate + S', 1, 24),
(85, 'Utiliser le pavé numérique dans un autre éditeur de texte avant de revenir à DevPac.', 0, 25),
(86, 'Remplacer les touches défectueuses de l\'Atari ou du PC.', 0, 25),
(87, 'Trouver l\'options à décocher \"Cursor mode numeric keypad\".', 1, 25),
(88, 'Aller dans le menu GEM -> Option -> Installer application.', 1, 26),
(89, 'Modifier les paramètres d\'ouverture automatique dans le menu Options de DevPac.', 0, 26),
(90, 'Ouvrir DevPac, puis utiliser le menu File -> Open pour sélectionner les fichiers sources.', 0, 26),
(91, 'La RAM est volatile et stocke des données temporaires, tandis que la ROM est non-volatile et stocke des données permanentes.', 1, 27),
(92, 'La RAM est volatile et stocke des données permanentes, tandis que la ROM est non-volatile et stocke des données temporaires.', 0, 27),
(93, 'On peut écrire dans la RAM, on ne peut pas écrire dans la ROM.', 1, 27),
(94, '1 Mo, 2 Mo', 1, 28),
(95, '512 Ko, 2,5 Mo, 4 Mo', 1, 28),
(96, '1 Mo, 2 Mo, 3 Mo, 4Mo', 0, 28),
(97, 'Une adresse dans la ROM.', 0, 29),
(98, 'Une adresse dans la RAM.', 1, 29),
(99, 'Une adresse parmis tant d\'autre.', 1, 29),
(100, '512 Ko : $7FFFF, 1 Mo : $0FFFFF, 2 Mo : $1F8000, 4 Mo : $1F8000.', 0, 30),
(101, '512 Ko : $7FFFF, 1 Mo : $0FFFFF, 2 Mo : $1FFFFF, 4 Mo : $3FFFFF.', 1, 30),
(102, '512 Ko : $7FFFF, 1 Mo : $0FFFFF, 2 Mo : $2F8000, 4 Mo : $4F8000.', 0, 30),
(103, 'Juste après les données systemes utilisées par le TOS', 0, 31),
(104, 'Dans la zone de la mémoire morte', 0, 31),
(105, 'En fin de RAM.', 1, 31),
(106, 'Visualiser les données de la RAM sous forme de couleurs.', 1, 32),
(107, 'Modifier les données de la RAM.', 0, 32),
(108, 'Réparer les erreurs dans la RAM.', 0, 32),
(109, 'Utiliser [Shift] + [TAB] pour naviguer entre les fenêtres et [Alt] + [D] pour ouvrir le débogueur.', 0, 33),
(110, 'Utiliser [TAB] pour naviguer entre les fenêtres et [Alt] + [D] pour ouvrir le débogueur.', 1, 33),
(111, 'Utiliser [TAB] pour naviguer entre les fenêtres et [Alt] + [E] pour ouvrir le débogueur.', 0, 33),
(112, 'Cette valeur pointe vers une adresse', 1, 34),
(113, 'Cette valeur affiche le frame buffer ', 0, 34),
(114, 'Cette valeur est un long word', 1, 34),
(115, 'Pour optimiser l\'utilisation des ressources et diagnostiquer les problèmes.', 1, 35),
(116, 'Pour augmenter la capacité de la RAM et améliorer la vitesse du processeur.', 0, 35),
(117, 'T\'as pas d\'autres questions débiles à poser ?.', 0, 35),
(118, 'Les registres de données et les registres d\'adresse', 1, 36),
(119, 'Les registres d\'instructions et les registres de segments', 0, 36),
(120, 'Les registres d\'accumulation et les registres de base', 0, 36),
(121, 'Les registres de données et les registres de segments', 0, 36),
(122, 'add', 0, 37),
(123, 'store', 0, 37),
(124, 'load', 0, 37),
(125, 'move', 1, 37),
(126, 'Les registres de données stockent les entiers, les registres d\'adresse stockent les adresses mémoire', 1, 38),
(127, 'Les registres de données stockent les instructions, les registres d\'adresse stockent les adresses IP', 0, 38),
(128, 'Les registres de données sont plus grands que les registres d\'adresse', 0, 38),
(129, 'Les registres de données sont utilisés pour les opérations arithmétiques et logiques, les registres d\'adresse pour les pointeurs d\'adresse', 1, 38),
(130, 'Des valeurs de 0 à 255', 1, 39),
(131, 'Des valeurs de 0 à 65535', 0, 39),
(132, 'Des valeurs de 0 à 4294967295', 0, 39),
(133, 'Des valeurs de 0 à 127', 1, 39),
(134, 'move.w #548, D0', 0, 40),
(135, 'move.b #548, D0', 1, 40),
(136, 'move.l #548, D0', 0, 40),
(137, 'move #548, D0', 0, 40),
(138, 'C\'est le registre de la pile', 1, 41),
(139, 'C\'est le registre de l\'accumulateur', 0, 41),
(140, 'C\'est le registre stack pointer', 1, 41),
(141, 'C\'est le registre d\'adresse 7', 1, 41),
(142, 'Ils indiquent la taille des opérations: .b pour octet, .w pour mot, .l pour long mot', 1, 42),
(143, 'Ils indiquent le type de données: .b pour booléen, .w pour word, .l pour liste', 0, 42),
(144, 'Ils indiquent la priorité de l\'instruction: .b pour basse, .w pour moyenne, .l pour haute', 0, 42),
(145, 'Ils indiquent le mode d\'adressage: .b pour direct, .w pour indirect, .l pour indexé', 0, 42),
(146, 'add.w #$4,d0', 1, 43),
(147, 'add.w $4,$85F0', 0, 43),
(148, 'add.l #$4,#$85F0', 0, 43),
(149, 'add.b #4,d0', 1, 43),
(150, 'Déplace le contenu de l\'adresse pointée par A0 vers le registre D0, puis incrémente A0', 0, 44),
(151, 'Déplace une constante vers le registre D0 et incrémente A0', 0, 44),
(152, 'Déplace le contenu du registre D0 vers l\'adresse pointée par A0, puis incrémente A0', 1, 44),
(153, 'Déplace le contenu du registre D0 vers une adresse immédiate', 0, 44),
(154, 'Le registre SP', 1, 45),
(155, 'Le registre de données', 0, 45),
(156, 'Le registre de segment', 0, 45),
(157, 'Le pointeur de pile', 1, 45),
(158, 'Initialiser la palette de couleurs', 0, 46),
(159, 'Terminer correctement le programme', 1, 46),
(160, 'Changer la résolution de l\'écran', 0, 46),
(161, 'Attendre une pression de touche', 0, 46),
(162, 'SECTION TEXT', 0, 47),
(163, 'SECTION DATA', 1, 47),
(164, 'SECTION BSS', 0, 47),
(165, 'SECTION INIT', 0, 47),
(166, 'include', 0, 48),
(167, 'incbin', 1, 48),
(168, 'import', 0, 48),
(169, 'load', 0, 48),
(170, 'Pterm0()', 0, 49),
(171, 'Setscreen()', 1, 49),
(172, 'Setpalette()', 0, 49),
(173, 'Cconin()', 0, 49),
(174, 'Les 2 premiers octets', 0, 50),
(175, 'Les 32 octets suivants', 1, 50),
(176, 'À partir du 34e octet', 0, 50),
(177, 'Les 64 premiers octets', 0, 50),
(178, '0 pour basse résolution', 1, 51),
(179, '1 pour moyenne résolution', 1, 51),
(180, '2 pour haute résolution', 1, 51),
(181, '3 pour très haute résolution', 0, 51),
(182, 'Recopie 4 octets de l\'adresse de a0 vers l\'adresse de a1', 1, 52),
(183, 'Incrémente a0 et a1 de 4 octets après la copie', 1, 52),
(184, 'Décrémente a0 et a1 de 4 octets après la copie', 0, 52),
(185, 'Recopie 1 octet de l\'adresse de a0 vers l\'adresse de a1', 0, 52),
(186, 'SECTION TEXT pour le code exécutable', 1, 53),
(187, 'SECTION BSS pour les variables non initialisées', 1, 53),
(188, 'SECTION DATA pour le code exécutable', 0, 53),
(189, 'SECTION INIT pour les variables non initialisées', 0, 53),
(190, '0', 0, 55),
(191, '-1', 1, 55),
(192, '1', 0, 55),
(193, '2', 0, 55),
(194, 'INCLUDE', 0, 56),
(195, 'EQU', 1, 56),
(196, 'DEFINE', 0, 56),
(197, 'CONST', 0, 56),
(198, 'RTS', 1, 57),
(199, 'BSR', 0, 57),
(200, 'DBF', 0, 57),
(201, 'TRAP', 0, 57),
(202, 'Incrémente un registre', 0, 58),
(203, 'Décrémente un registre et boucle si le registre n\'est pas égal à -1', 1, 58),
(204, 'Charge une valeur dans un registre', 0, 58),
(205, 'Effectue un appel système', 0, 58),
(206, 'incbin', 0, 59),
(207, 'include', 1, 59),
(208, 'import', 0, 59),
(209, 'link', 0, 59),
(210, 'Pterm0()', 0, 60),
(211, 'Cconin()', 1, 60),
(212, 'Setscreen()', 0, 60),
(213, 'Setpalette()', 0, 60);

-- --------------------------------------------------------

--
-- Structure de la table `contents`
--

CREATE TABLE `contents` (
  `id_contents` int(11) NOT NULL,
  `title_left` varchar(50) DEFAULT NULL,
  `title_right` varchar(50) DEFAULT NULL,
  `title_center` varchar(50) DEFAULT NULL,
  `text_left` mediumtext DEFAULT NULL,
  `text_right` mediumtext DEFAULT NULL,
  `text_center` mediumtext DEFAULT NULL,
  `image_left` varchar(50) DEFAULT NULL,
  `image_right` varchar(50) DEFAULT NULL,
  `image_center` varchar(50) DEFAULT NULL,
  `attachement_left` varchar(50) DEFAULT NULL,
  `attachement_right` varchar(50) DEFAULT NULL,
  `attachement_center` varchar(50) DEFAULT NULL,
  `page` tinyint(4) DEFAULT NULL,
  `id_templates` int(11) NOT NULL,
  `id_articles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contents`
--

INSERT INTO `contents` (`id_contents`, `title_left`, `title_right`, `title_center`, `text_left`, `text_right`, `text_center`, `image_left`, `image_right`, `image_center`, `attachement_left`, `attachement_right`, `attachement_center`, `page`, `id_templates`, `id_articles`) VALUES
(1, 'C\'est de là que je viens !', 'C\'est par-là que je vais :D', '', 'Oui je viens surtout du monde de l\' <span class=\"hashtag\">Amstrad</span>, une communauté qui partage énormément et qui reste ultra dynamique encore en 2024. <span class=\"bold\">Plus d\'une centaine de production chaque année</span> (france, espagne, angleterre, allemagne ...) des outils de développement sont également crées comme <span class=\"color-red\">Arkos Tracker</span> pour la musique (merci Julien) ou <span class=\"color-red\">IMPDraw 2</span> qui est carrément une suite d\'outils graphiques ultra complète (Merci AST !).<br>\n<br>\nEt comme si ce n\'était pas suffisant certain comme BDCIron on carrément créé <span class=\"bold\">un site complet pour l\'apprentissage de l\'assembleur sur Zilog 80</span> (zilog.fr). <br>\nBref çà rigole pas.', 'J\'ai pu participer à mon premier event il \'y a deux années de celà, c\'était au <span class=\"hashtag\">GemTOS</span>. Une convention en béton armé qui montre qu\'il y\'a beaucoup de monde chez les ataristes et tous très créatif ! A cette époque je découvrais tout juste l\'assembleur 68000 et j\'ai fait de superbe rencontre et appris beaucoup de chose ce week-end là !<br>\nC\'est bien mais question <span class=\"italic\">\"je trouve les informations facilement ET  en français\"</span> ... c\'est pas trop çà sur cette bécane.<br>\nFranchement chez les ataristes c\'est un peu moue de la chique question transmission du savoir en comparaison avec les amstradiens.<br>\nDonc quand un truc me plaît pas et bien je prends ma cervelle et mes petits doigts et je me met au boulot !', '', NULL, NULL, NULL, '', '', '', 1, 3, 1),
(2, 'Mais je compte faire quoi ?', '', '', 'Et bien pour commencer je souhaite proposer quelque chose<span class=\"bold\"> qui permette à n\'importe quel débutant de se mettre à la programmation en assembleur.</span> <br>\n<br>\nEn simplifiant, en donnant des exemples, en schématisant, en proposant de la documentation, en rassemblant un maximum de source, et en faisant !', '', '', NULL, '1719517602886.png', NULL, '', '', '', 1, 1, 1),
(3, '', '', '', '', '', 'Le screen, là haut à droite, c\'est mon premier <span class=\"italic\">\"Zelda like\"</span> que j\'ai pu coder sur mon 1040 STe, et toi, <span class=\"bold\">OUI TOI !!!!</span> Tu es CAPABLE de coder en assembleur, sauf que sans aucune information où avec seulement des bouts de ficelles c\'est compliqué, puis au bout d\'un moment t\'en a marre et donc tu finis par laisser tomber.<br>\n<br>\nJe te parlerai aussi des sources  d\'informations qui m\'ont aidé à comprendre des trucs, notamment les vidéos de la chaîne <a class=\"link\" href=\"https://www.youtube.com/@Vretrocomputing\" target=\"blank\">VRetroComputing</a>, pédagogue, carré, clair net et précis ! Y\'en a .... mais c\'est le seul à fournir un support réellement pédagogique.<br>\n', NULL, NULL, NULL, '', '', '', 1, 4, 1),
(4, '', '', '', '', '', '', '1719517980320.png', '1719517980322.png', NULL, '', '', '', 1, 2, 1),
(5, '', '', 'Il va se passer quoi maintenant ?', '', '', 'Et bien c\'est simple tu vas se poser tranquille dans ton canapé, une bière à la main à mater une série sur <span class=\"bold\"><span class=\"color-blue\">Prime vidéo</span></span>. Et moi pendant ce temps je me donne <span class=\"bold\">jusqu\'à la fin du mois de juin</span>, pour re-factoriser mon code, et faire çà plus proprement, me donner aussi un peu plus de confort quant à l’ergonomie de mon back-office (qui représente tout de même 80% du site. La partie visible (donc public) ne représente finalement pas grand chose). A l\'heure où je met ce site en ligne je suis ce que l\'on appelle un \"développeur junior\" (suite à ma reconversion professionnelle qui date d\'il y\'a un an à peine).<br>\nCe projet de site, assembleur mis à part, va me servir d\'expérience et d\'expertise. Cela signifie aussi qu\'une multitude de détails ne vont pas aller et je devrais donc améliorer toutes ces petites choses au fils des mois durant.<br>\n<br>\nRevenez y de temps en temps vous y verrez certainement des ajouts, des articles et des fichiers dans les unités de disque, qui serviront de tiroirs à fichiers en tout genre. Mais ce sera classé et bien rangé, à l\'inverse du contenu facebook ou même discord, qui finira par se perdre !<br>\nIci ce n\'est pas perdu <span class=\"color-red\"><span class=\"bold\">et ce sera rangé !</span></span> <br>\nQuand au site en lui même il ne va pas disparaître du jour au lendemain, car c\'est mon métier à présent, donc je saurais m\'en occuper :).<br>\n<br>\nA l\'occasion de ce site web, j\'ai créé un groupe <span class=\"hashtag\">facebook</span> qui s\'appelle tout simplement <span class=\"bold\"><span class=\"color-blue\">\"L\'assembleur 68000 sur Atari ST\"</span></span>.<br>\nIl y\'a à l\'heure actuelle, une cinquantaine de personnes, ce groupe a été ouvert il y\'a à peine 2 semaines.<br>\n<br>\nIl existe aussi un <span class=\"hashtag\">Discord</span> dont voici le lien d\'invitation (qu\'il faut copier coller car j\'ai pas encore mis de fonctionnalité de lien) :<br>\n<a class=\"link\" href=\"https://discord.gg/WPAsfrng5n\" target=\"blank\">https://discord.gg/WPAsfrng5n</a><br>\n<br>\n<br>\nVoilà voilà, je crois que j\'ai tout dis !<br>\n@pluche !', NULL, NULL, NULL, '', '', '', 1, 4, 1),
(6, '', '', '', '', '', '- <span class=\"bold\">Bconin</span> : Lire un caractère depuis un périphérique.<br>\n- <span class=\"bold\">Bconout</span> : Envoyer un caractère à une unité périphérique.<br>\n- <span class=\"bold\">Bconstat</span> : Obtenir le statut d\'entrée d\'une unité périphérique.<br>\n- <span class=\"bold\">Bcostat</span> : Obtenir le statut d\'un périphérique de sortie standard.<br>\n- <span class=\"bold\">Drvmap</span> : Obtenir des informations sur les périphériques attachés.<br>\n- <span class=\"bold\">Getbpb</span> : Obtenir l\'adresse du bloc de paramètres BIOS d\'une unité.<br>\n- <span class=\"bold\">Getmpb</span> : Déterminer le bloc de paramètres de mémoire.<br>\n- <span class=\"bold\">Kbshift</span> : Récupérer/mettre à jour le statut des touches de modification.<br>\n- <span class=\"bold\">Mediach</span> : Demander si le média a été changé.<br>\n- <span class=\"bold\">Rwabs</span> : Opération de lecture/écriture directe sur une unité.<br>\n- <span class=\"bold\">Setexc</span> : Définir et obtenir le vecteur d\'interruption.<br>\n- <span class=\"bold\">Tickcal</span> : Obtenir la différence de temps entre deux appels de minuterie.<br>\n<br>\nLe <span class=\"bold\">BIOS</span> est \"ré-entrant\" sous <span class=\"bold\">MagiC</span>. Cela signifie que ces fonctions <span class=\"underline\">peuvent également être appelées de manière répétée depuis des interruptions</span> <span class=\"italic\">(tant que la pile du superviseur concerné ne déborde pas...)</span>.<br>\n<br>\n<div class=\"border-yellow\"><p> - La couche <span class=\"bold\"><saveptr_area></span> du BIOS est toujours présente<span class=\"italic\"> (pour des raisons de compatibilité)</span>, mais elle n\'est pas utilisée par le système.<br>\n<br>\n - Les vérifications de pile de Turbo C/Pure-C échoueront pour les routines exécutées en mode superviseur <span class=\"italic\">(sous TOS, cela pouvait se produire uniquement pour les routines USERDEF dans l\'AES, qui sont également exécutées en mode superviseur)</span>.</p></div><br>\n<br>\nSi vous insérez vos propres routines dans le BIOS, assurez-vous qu\'elles soient entièrement ré-entrantes. Ne faites aucune supposition sur le contenu de la couche <span class=\"bold\"><saveptr_area></span> !<br>\n<br>\nLe <span class=\"bold\">BIOS</span> reçoit ses paramètres de la pile ; pour cela, le dernier argument de la liste de paramètres est stocké en premier sur la pile.<br>\n<div class=\"border-yellow\"><p>Les résultats des fonctions sont renvoyés dans le registre du processeur d0.<br>\nSeuls les registres d3-d7 et a3-a7 sont sauvegardés, tous les autres peuvent être modifiés par l\'appel.</p></div>', NULL, NULL, NULL, '', '', '', 1, 4, 2),
(7, 'Bconin', '', '', '<span class=\"bold\">Nom :</span> Entrée console BIOS<br>\n<span class=\"bold\">Opcode :</span> 2<br>\n<span class=\"bold\">Syntaxe :</span> int32_t Bconin ( int16_t dev );<br>\n<span class=\"bold\">Description :</span> La routine BIOS Bconin lit un caractère depuis un périphérique. Les périphériques suivants peuvent être spécifiés pour dev (dev = le numéros de la colonne de gauche) :<br>\n<br>\n0	prn: (Imprimante/Port parallèle)<br>\n1	aux: (périphérique auxiliaire, le port RS-232)<br>\n2	con: (Console)<br>\n3	Port MIDI<br>\n4	Port clavier<br>\n5	Écran<br>\n6	Port RS232 compatible ST (Modem 1)<br>\n7	Canal SCC B (Modem 2)<br>\n8	Port série TTMFP (Modem 3)<br>\n9	Canal SCC A (Modem 4)', '<div class=\"border-red\"><p>Notez que les numéros de périphérique à partir de 6 ne sont disponibles qu\'à partir du TOS030 de l\'Atari-TT. Une déclaration incorrecte pour dev peut entraîner un plantage du système.</p></div><br>\n<br>\n<span class=\"bold\">Valeur de retour :</span> La fonction renvoie le caractère lu comme une valeur ASCII dans les bits 0..7. Lors de la lecture depuis la console, <span class=\"underline\">les bits 16 à 23 contiennent le scan-code de la touche correspondante</span>. Si, en plus, le bit correspondant de la variable système <span class=\"italic\">conterm</span> est défini, alors les bits 24 à 31 contiennent la valeur actuelle de <span class=\"italic\">Kbshift</span>.<br>\n<br>\n<span class=\"bold\">Disponibilité :</span> Toutes les versions TOS.<br>\n<br>\n<span class=\"code\">move.w    dev,-(sp)    ; Offset 2<br>\nmove.w    #2,-(sp)     ; Offset 0<br>\ntrap      #13          ; Call BIOS<br>\naddq.l    #4,sp        ; Correct stack</span>', '', NULL, NULL, NULL, '', '', '', 1, 3, 2),
(8, 'Bconout', '', '', '<span class=\"bold\">Nom :</span> Sortie console BIOS<br>\n<span class=\"bold\">Opcode :</span> 3<br>\n<span class=\"bold\">Syntaxe :</span> VOID Bconout ( int16_t dev, int16_t c );<br>\n<span class=\"bold\">Description :</span> La routine BIOS Bconout écrit le caractère c sur le périphérique dev. Les périphériques suivants peuvent être spécifiés pour dev :<br>\n<br>\n0	prn: (Imprimante/Port parallèle)<br>\n1	aux: (périphérique auxiliaire, le port RS-232)<br>\n2	con: (Console, terminal VT-52)<br>\n3	Port MIDI<br>\n4	Port clavier<br>\n5	Écran<br>\n6	Port RS-232 compatible ST (Modem 1)<br>\n7	Canal SCC B (Modem 2)<br>\n8	Port série TTMFP (Modem 3)<br>\n9	Canal SCC A (Modem 4)', '<div class=\"border-red\"><p>Notez que les numéros de périphérique à partir de 6 ne sont disponibles qu\'à partir du TOS030 de l\'Atari-TT.</p></div><br>\n<br>\n<div class=\"border-red\"><p>La fonction ne retourne que lorsque le caractère a effectivement été sorti par le périphérique concerné. Une déclaration incorrecte pour dev peut entraîner un plantage du système. </p></div><br>\n<br>\n<div class=\"border-red\"><p>Tous les codes de 0x00 à 0xFF pour le caractère c sont interprétés comme des caractères imprimables. La sortie via (5) est, incidemment, plus rapide que via (2), car les séquences VT-52 n\'ont pas besoin d\'être évaluées.</p></div><br>\n<br>\n<span class=\"bold\">Valeur de retour :</span> La fonction ne renvoie pas de résultat.<br>\n<br>\n<span class=\"bold\">Disponibilité :</span> Toutes les versions TOS.<br>\n<br>\n<span class=\"code\">move.w    c,-(sp)      ; Offset 4<br>\nmove.w    dev,-(sp)    ; Offset 2<br>\nmove.w    #3,-(sp)     ; Offset 0<br>\ntrap      #13          ; Call BIOS<br>\naddq.l    #6,sp        ; Correct stack</span>', '', NULL, NULL, NULL, '', '', '', 1, 3, 2),
(9, 'Bconstat', '', '', '<span class=\"bold\">Nom :</span> Statut console BIOS<br>\n<span class=\"bold\">Opcode :</span> 1<br>\n<span class=\"bold\">Syntaxe :</span> int16_t Bconstat ( int16_t dev );<br>\n<span class=\"bold\">Description :</span> La routine BIOS Bconstat établit le statut d\'entrée d\'un périphérique standard dev. Les périphériques suivants peuvent être spécifiés pour dev :<br>\n<br>\n0	prn: (Imprimante/Port parallèle)<br>\n1	aux: (périphérique auxiliaire, le port RS-232)<br>\n2	con: (Console)<br>\n3	Port MIDI<br>\n4	Port clavier<br>\n5	Écran<br>\n6	Port RS-232 compatible ST (Modem 1)<br>\n7	Canal SCC B (Modem 2)<br>\n8	Port série TTMFP (Modem 3)<br>\n9	Canal SCC A (Modem 4)', '<div class=\"border-red\"><p>Notez que les numéros de périphérique à partir de 6 ne sont disponibles qu\'à partir du TOS030 de l\'Atari-TT. Une déclaration incorrecte pour dev peut entraîner un plantage du système.</p></div><br>\n<br>\n<span class=\"bold\">Valeur de retour :</span> La fonction renvoie -1 lorsqu\'il y a des caractères en attente dans le tampon, et 0 si ce n\'est pas le cas.<br>\n<br>\n<span class=\"bold\">Disponibilité :</span> Toutes les versions TOS.<br>\n<br>\n<span class=\"code\">move.w    dev,-(sp)    ; Offset 2<br>\nmove.w    #1,-(sp)     ; Offset 0<br>\ntrap      #13          ; Call BIOS<br>\naddq.l    #4,sp        ; Correct stack</span>', '', NULL, NULL, NULL, '', '', '', 1, 3, 2),
(10, 'Bcostat', '', '', '<span class=\"bold\">Nom :</span> Statut périphérique de sortie BIOS<br>\n<span class=\"bold\">Opcode :</span> 8<br>\n<span class=\"bold\">Syntaxe :</span> int16_t Bcostat ( int16_t dev );<br>\n<span class=\"bold\">Description :</span> La routine BIOS Bcostat établit le statut d\'un périphérique de sortie standard dev. Les périphériques suivants peuvent être spécifiés pour dev :<br>\n<br>\n0	prn: (Imprimante/Port parallèle)<br>\n1	aux: (périphérique auxiliaire, le port RS-232)<br>\n2	con: (Console)<br>\n3	Port MIDI<br>\n4	Port clavier<br>\n5	Écran<br>\n6	Port RS-232 compatible ST (Modem 1)<br>\n7	Canal SCC B (Modem 2)<br>\n8	Port série TTMFP (Modem 3)<br>\n9	Canal SCC A (Modem 4)', '<div class=\"border-red\"><p>Notez que les numéros de périphérique à partir de 6 ne sont disponibles qu\'à partir du TOS030 de l\'Atari-TT. Une déclaration incorrecte pour dev peut entraîner un plantage du système.</p></div><br>\n<br>\n<span class=\"bold\">Valeur de retour :</span> La fonction renvoie -1 si le périphérique de sortie est prêt, et 0 si ce n\'est pas le cas.<br>\n<br>\n<span class=\"bold\">Disponibilité :</span> Toutes les versions TOS.<br>\n<br>\n<span class=\"code\">move.w    dev,-(sp)    ; Offset 2<br>\nmove.w    #8,-(sp)     ; Offset 0<br>\ntrap      #13          ; Call BIOS<br>\naddq.l    #4,sp        ; Correct stack</span><br>\n', '', NULL, NULL, NULL, '', '', '', 1, 3, 2),
(11, '', '', '', '', '', 'En plus de cela, de nombreuses autres routines sont disponibles, lesquelles peuvent être réparties dans l\'une des catégories suivantes :<br>\n<br>\n - <span class=\"bold\">GEMDOS</span><br>\n-  <span class=\"bold\">BIOS</span><br>\n-  <span class=\"bold\">XBIOS</span><br>\n<br>\nLe <span class=\"bold\">TOS</span> remonte à l\'année 1985. Au fil du temps, il a été développé davantage par <span class=\"bold\">Atari</span> et est disponible pour divers modèles d\'ordinateurs (ST, STE, Mega-ST, TT, Falcon, ...). De plus, il existe un certain nombre de systèmes compatibles TOS proposés par des tiers.<br>\n<br>\nIl convient de mentionner à cet égard, surtout, <a class=\"link\" href=\"https://www.atariuptodate.de/en/6/magic#\" target=\"blank\">MagiC</a> et <a class=\"link\" href=\"https://www.atariuptodate.de/en/5/geneva\" target=\"blank\">Geneva</a>. Alors que <span class=\"bold\">MagiC</span> est devenu particulièrement important en Allemagne (et au Royaume-Uni), <span class=\"bold\">Geneva</span> semble avoir rencontré un certain succès aux États-Unis.<br>\n<br>\nGrâce à <a class=\"link\" href=\"https://gitlab.com/AndreasK/AtariX\" target=\"blank\">MagiC Mac</a>, une implémentation de <span class=\"bold\">MagiC</span> sur le matériel Apple (Power) Macintosh, les programmes TOS fonctionnent désormais également sur les ordinateurs Apple.<br>\nUne variante ultérieure, <a class=\"link\" href=\"https://magicpc.atari-users.com/\" target=\"blank\">MagiC PC</a>, a également étendu cette compatibilité à de nombreuses machines Windows.<br>\n', NULL, NULL, NULL, '', '', '', 1, 4, 3),
(12, '', '', 'GEM (Graphics Environment Manager) ', '', '', 'Il fait partie du système d\'exploitation et représente l\'interface (graphique) entre l\'ordinateur et l\'utilisateur. <br>\n<span class=\"bold\">GEM</span> a été développé par l\'entreprise <a class=\"link\" href=\"https://fr.wikipedia.org/wiki/Digital_Research\" target=\"blank\">Digital Research</a> en 1984 pour les PC avec processeurs Intel. Le système est devenu bien connu surtout lorsque l\'Atari ST a été commercialisé, offrant une alternative puissante et abordable aux machines PC et Macintosh coûteuses de l\'époque.<br>\n<br>\nAu fil du temps, GEM a été adapté à divers systèmes d\'exploitation et plateformes matérielles, y compris :<br>\n<br>\n- PC GEM<br>\n- Atari GEM<br>\n- GEM sur X <span class=\"italic\">(version pour systèmes Unix)</span><br>\n- X/GEM <span class=\"italic\">(pour le système d\'exploitation FlexOS)</span><br>\n<br>\nGEM peut être divisé en deux sous-ensembles :<br>\n<br>\n- AES, Application Environment Services<br>\n- VDI, Virtual Device Interface<br>\n<br>\nL\'<span class=\"bold\">AES</span> se charge de l\'organisation de l\'environnement utilisateur, tandis que le <span class=\"bold\">VDI</span> s\'occupe de l\'affichage graphique uniforme de l\'interface utilisateur.<br>\nLors du développement de programmes <span class=\"bold\">GEM</span>, il est impératif de respecter les lignes directrices en vigueur et de ne jamais tenter d\'imposer à l\'utilisateur une interface qui ne respecte aucune norme.', NULL, NULL, NULL, '', '', '', 2, 4, 3),
(13, '', '', 'Les différentes versions de GEM', '', '', 'Pour connaître le numéro de version de <span class=\"bold\">GEM</span>, on utilise généralement <span class=\"underline\">l\'ID renvoyé dans le champ global par l\'appel appl_init</span>. Le <span class=\"bold\">VDI</span>, en revanche, <span class=\"underline\">n\'a en réalité pas de numéro de version propre</span>, d\'autant plus que le comportement des fonctions <span class=\"bold\">VDI</span> individuelles est principalement <span class=\"underline\">déterminé par les pilotes de périphériques utilisés</span>, qui sont, après tout, remplaçables.<br>\n<br>\nOn peut globalement différencier les versions de <span class=\"bold\">GEM</span> suivantes :', NULL, NULL, NULL, '', '', '', 2, 4, 3),
(14, 'GEM 1.x', '', '', 'Cette première version de l\'<span class=\"bold\">AES (1.x)</span> avait, non par hasard, <span class=\"underline\">de grandes similitudes avec le système d\'exploitation du Macintosh d\'Apple</span>.<br>\n<br>\nCela se manifestait non seulement dans la conception des éléments de fenêtre, mais aussi dans de nombreuses fonctionnalités du bureau et d\'autres programmes d\'application. <br>\n<br>\nÀ l\'époque, <span class=\"bold\">GEM</span> était présenté principalement en connexion avec des versions d\'essai de <span class=\"bold\">GEM-Draw</span>, <span class=\"bold\">GEM-Paint</span> et <span class=\"bold\">GEM-Write</span>, qui correspondaient en de nombreux détails aux prototypes Macintosh bien connus <span class=\"bold\">MacDraw</span>, <span class=\"bold\">MacPaint</span> et <span class=\"bold\">MacWrite</span>.', '', '', NULL, '1719520729587.png', NULL, '', '', '', 2, 1, 3),
(15, '', '', '', '', '', 'C\'est également la version adoptée par Atari et livrée dans le ST ; toutes les versions plus récentes de l\'Atari-GEM sont également basées sur cette version.<br>\nEn effet, la société Atari a acquis tous les droits sur la version existante et a continué à la développer elle-même. Cela explique également les différences de plus en plus grandes entre <span class=\"bold\">PC-GEM</span> et <span class=\"bold\">Atari-GEM</span>. <br>\n<br>\nLe plus grand défaut de la version Atari était certainement l\'absence du <span class=\"bold\">Graphics Device Operating System (GDOS)</span> ; celui-ci contient des fonctions graphiques indépendantes du périphérique, qui n\'étaient implémentées sur l\'Atari que pour l\'écran, et devaient donc être chargées séparément pour les imprimantes, traceurs, caméras, etc. <br>\nEn conséquence <span class=\"italic\">(surtout dans les premiers jours de l\'Atari)</span>, chaque programme utilisait ses propres pilotes et formats, rendant ainsi l\'échange de données entre applications presque impossible.', NULL, NULL, NULL, '', '', '', 2, 4, 3),
(16, 'GEM 2.x', '', '', 'En raison d\'un différend juridique entre <span class=\"bold\">Apple</span> et <span class=\"bold\">Digital Research</span> <span class=\"italic\">(concernant principalement l\'apparence des programmes d\'application et du bureau)</span>, la version PC de GEM a dû être modifiée.<br>\n<br>\nLe règlement, qui n\'affectait pas la version GEM d\'Atari, ressemblait à ceci :<br>\n<br>\n- <span class=\"color-blue\">Certains éléments de fenêtre</span> ont été modifiés de telle sorte qu\'ils ne ressemblaient plus aux fenêtres du Macintosh <span class=\"italic\">(surtout la barre de titre)</span><br>\n<br>\n- <span class=\"color-blue\">Le menu Accessory</span> a été déplacé dans le coin opposé (droit) de l\'écran<br>\n<br>\n- <span class=\"color-blue\">Les fonctions <span class=\"bold\">graf_growbox</span> et <span class=\"bold\">graf_shrinkbox</span> </span>ont été éliminées<br>\n<br>\n- <span class=\"color-blue\">Le bureau</span> a été entièrement reprogrammé et limité à deux fenêtres fixes.', '', '', NULL, '1719520816205.png', NULL, '', '', '', 2, 1, 3),
(17, '', '', '', '', '', 'Contrairement aux idées reçues, il ne s\'agissait cependant <span class=\"underline\">que d\'une modification du bureau</span>, et non de l\'<span class=\"bold\">AES</span>, qui continuait à permettre jusqu\'à huit fenêtres superposées.<br>\nCependant, il n\'y avait pas que des restrictions, mais aussi des améliorations. L\'exemple le plus important à mentionner est que les accessoires pouvaient installer leur propre barre de menu.<br>\n<br>\nCette version a reçu le numéro de <span class=\"bold\">version 2.0</span> et a été fournie <span class=\"underline\">à partir de 1987</span> ; peu de temps après, elle a été portée par la société de logiciels néerlandaise <span class=\"bold\">ABC</span> avec <span class=\"bold\">GEM-Draw</span>, <span class=\"bold\">GEM-Paint</span>, <span class=\"bold\">GEM-Graph</span> et bien sûr le bureau GEM sur l\'Atari.<br>\nCependant, cette version n\'a jamais vraiment pris de l\'importance et n\'est plus disponible aujourd\'hui.', NULL, NULL, NULL, '', '', '', 2, 4, 3),
(18, 'PC-GEM 3.x', 'GEM Desktop 3.13', '', 'Cette version contenait quelques améliorations mineures. Ainsi, le comportement du menu pouvait être commuté de déroulant à dépliant, par exemple.<br>\n<br>\nÀ partir de la version <span class=\"bold\">GEM/3 3.11</span>, il existe des fonctions <span class=\"bold\">VDI</span> supplémentaires, qui concernent <span class=\"color-blue\">les fonctions Bézier</span> et <span class=\"color-blue\">les imprimantes Postscript</span>.<br>\n<br>\nLe programme <span class=\"bold\">ARTLINE</span> utilise ces nouvelles fonctions avec ses polices vectorielles.<br>\n<br>\nEn raison de la domination de <span class=\"bold\">MS-Windows</span>, cette version a pratiquement disparu du marché des PC.', 'La dernière version standard vendue.<br>\n<br>\nPartie du <span class=\"bold\">GEM PTK/SDK 3.13</span> qui a finalement été réécrite pour prendre en charge les compilateurs <span class=\"bold\">ANSI C</span>.', '', NULL, NULL, '1719520929760.png', '', '', '', 2, 9, 3),
(19, 'GEM/4 ', 'GEM/5', '', 'N\'a atteint le marché qu\'en tant que support d\'exécution pour <span class=\"bold\">Artline/2</span>, <span class=\"bold\">PresTeam/2</span>, <span class=\"bold\">Publish it/3</span>, etc. Le <span class=\"bold\">VDI</span> utilisera <span class=\"bold\">EMS</span>, si disponible.<br>\n<br>\nLe bureau <span class=\"bold\">GEM/3</span> ne fonctionne pas correctement et une commande shell fournie pour lancer des applications <span class=\"bold\">GEM/4</span> à partir du bureau <span class=\"bold\">GEM/3</span> peut planter après une utilisation répétée.', 'N\'a atteint le marché qu\'en tant que support d\'exécution pour <span class=\"bold\">Timeworks Publisher 2.1</span>. Il avait un support de police évolutive utilisant la mémoire <span class=\"bold\">XMS</span> et ajoute un aspect 3D aux objets <span class=\"bold\">AES</span>.<br>\n<br>\n<span class=\"bold\">GEM/4 </span>et <span class=\"bold\">GEM/5</span> ont ajouté de nouveaux appels <span class=\"bold\">VDI</span> et <span class=\"bold\">AES</span>, mais leurs liaisons sont inconnues. <br>\n<br>\nCet <span class=\"bold\">AES 4.0</span> propriétaire prend en charge un nouveau message MU_HELP et certains appels prennent un paramètre supplémentaire pour une aide contextuelle.<br>\nCe que ces fonctionnalités font réellement n\'est pas connu.', '', NULL, NULL, NULL, '', '', '', 3, 3, 3),
(20, '', 'GEM/XM', '', '', 'Probablement le modèle pour le <span class=\"bold\">X/GEM</span> de <span class=\"bold\">DRI</span> pour <span class=\"bold\">FlexOS</span><span class=\"italic\"> (un système multitâche en mode protégé 32 bits)</span>.<br>\n<br>\n<span class=\"bold\">GEM/XM</span> prévoyait d\'apporter un support multitâche sous <span class=\"bold\">DOS</span>, mais est resté inachevé. La dernière version est FreeGEM/XM 3.0beta5-je1.', '', '1719521060733.png', NULL, NULL, '', '', '', 3, 6, 3),
(21, 'ViewMAX/1 (DR-DOS 5.0)', 'ViewMAX/3 (DR-DOS 7.0)', 'ViewMAX/2 (DR-DOS 6.0)', 'C\'est un noyau <span class=\"bold\">GEM/4</span> \"limité\" et ne peut être utilisé que comme un shell pour appeler des applications <span class=\"bold\">GEM</span>. <br>\nBien que conçu pour <span class=\"bold\">DR DOS</span>, il fonctionnera sous <span class=\"bold\">MS-DOS 3.x</span> et versions ultérieures <span class=\"italic\">(moins les mots de passe)</span>. <br>\nPour l\'utiliser avec des applications <span class=\"bold\">GEM</span>, vous devez avoir une installation<span class=\"bold\"> GEM/3</span> ainsi qu\'une installation <span class=\"bold\">ViewMAX</span>. Cette version a été écrite en <span class=\"bold\">Lattice C 3.x</span>.', 'Il n\'a jamais été publié, mais du code bêta est disponible.', 'C\' était une version améliorée de la précédente, mais avec les mêmes limitations de noyau que ci-dessus. Cette version a été réécrite en <span class=\"bold\">Turbo C2.0</span> et permet une configuration via un fichier *.ini.', NULL, NULL, NULL, '', '', '', 3, 7, 3),
(22, '', '', '', '', '', '', NULL, NULL, '1719521179677.png', '', '', '', 3, 5, 3),
(23, 'X/GEM', 'Atari-GEM 1.4', '', 'Cette version de <span class=\"bold\">GEM</span> a été développée par <a class=\"link\" href=\"https://fr.wikipedia.org/wiki/Digital_Research\" target=\"blank\">Digital Research</a> sur un système d\'exploitation multitâche multi-utilisateurs <span class=\"italic\">(FlexOS)</span>, et permet la gestion simultanée de plusieurs applications au premier plan.', 'Des modifications majeures ont été apportées par Atari uniquement dans <span class=\"bold\">GEM 1.4</span> de <span class=\"bold\">TOS 1.04</span> ; la fonctionnalité la plus connue est le sélecteur de fichiers grandement amélioré.', '', NULL, NULL, NULL, '', '', '', 3, 3, 3),
(24, 'Drvmap', '', '', '<span class=\"bold\">Nom :</span> Carte des lecteurs<br>\n<span class=\"bold\">Opcode :</span> 10<br>\n<span class=\"bold\">Syntaxe :</span> int16_t Drvmap ( VOID );<br>\n<br>\n<span class=\"bold\">Description :</span> La routine BIOS Drvmap établit la carte des lecteurs montés. Pour chaque lecteur monté, un bit est défini. Les bits valides sont :<br>\nBit 0 : Lecteur A<br>\nBit 1 : Lecteur B, etc. (32 périphériques maximum possibles)<br>\n<br>\n<span class=\"bold\">Note :</span> La fonction retourne le contenu de la variable système _drvbits. Pour déterminer quels lecteurs sont reconnus par GEMDOS, il faut utiliser la fonction Dsetdrv.<br>\n<br>\n', '<span class=\"bold\">Valeur de retour :</span> La fonction renvoie un WORD (int16_t) dont les bits 0 à 15 représentent les périphériques de bloc installés. Par exemple, si le bit 2 (2^2) est défini, le disque dur logique \'C\' est disponible.<br>\n<br>\n<span class=\"bold\">Disponibilité :</span> Toutes les versions TOS.<br>\n<br>\n<span class=\"code\">move.w    #$A,-(sp)     ; Offset 0<br>\ntrap      #13           ; Appel au BIOS<br>\naddq.l    #2,sp         ; Correction de la pile</span>', '', NULL, NULL, NULL, '', '', '', 2, 3, 2),
(25, 'Getbpb', '', '', '<span class=\"bold\">Nom :</span> Obtenir le BPB (Bloc de Paramètres du BIOS)<br>\n<span class=\"bold\">Opcode :</span> 7<br>\n<span class=\"bold\">Syntaxe :</span> BPB *Getbpb ( int16_t dev );<br>\n<br>\n<span class=\"bold\">Description :</span> La routine BIOS Getbpb établit le bloc de paramètres du BIOS (BPB) du périphérique dev, qui est codé comme suit :<br>\ndev	Signification<br>\n0	Lecteur A<br>\n1	Lecteur B<br>\n2	Lecteur C<br>\n<br>\nLes lecteurs suivants sont codés de manière similaire. En appelant cette fonction, l\'état de changement de média dans le BIOS est réinitialisé.', '<span class=\"bold\">Valeur de retour :</span> La fonction retourne l\'adresse du BPB<br>\n<br>\n<span class=\"bold\">Disponibilité :</span> Toutes les versions de TOS.<br>\n<br>\n<span class=\"code\">move.w    dev,-(sp)    ; Offset 2<br>\nmove.w    #7,-(sp)     ; Offset 0<br>\ntrap      #13          ; Appel au BIOS<br>\naddq.l    #4,sp        ; Correction de la pile</span><br>\n', '', NULL, NULL, NULL, '', '', '', 2, 3, 2),
(26, 'Getmpb', '', '', '<span class=\"bold\">Nom :</span> Obtenir le BPB de la mémoire (Bloc de Paramètres de la Mémoire)<br>\n<span class=\"bold\">Opcode :</span> 0<br>\n<span class=\"bold\">Syntaxe :</span> VOID Getmpb ( MPB *ptr );<br>\n<br>\n<span class=\"bold\">Description :</span> La routine BIOS Getmpb sert à initialiser la gestion de la mémoire et est appelée au démarrage par GEMDOS pour créer le TPA (Transient Program Area) initial. Après cela, Getmpb ne doit plus être utilisé.<br>\n<br>\n<span class=\"bold\">Valeur de retour :</span> La fonction ne retourne pas de résultat.', '<span class=\"bold\">Disponibilité :</span> Toutes les versions de TOS.<br>\n<br>\n<span class=\"code\">pea       ptr          ; Offset 2<br>\nmove.w    #0,-(sp)     ; Offset 0<br>\ntrap      #13          ; Appel au BIOS<br>\naddq.l    #6,sp        ; Correction de la pile</span><br>\n', '', NULL, NULL, NULL, '', '', '', 2, 3, 2),
(27, 'Kbshift', '', '', '<span class=\"bold\">Nom :</span> État des touches spéciales du clavier<br>\n<span class=\"bold\">Opcode :</span> 11<br>\n<span class=\"bold\">Syntaxe :</span> int16_t Kbshift ( int16_t mode );<br>\n<br>\n<span class=\"bold\">Description :</span> La routine BIOS Kbshift établit ou modifie l\'état actuel des touches spéciales du clavier. Si mode est négatif, l\'état est simplement établi. Si mode est 0 ou supérieur à 0, l\'état correspondant sera défini. Les bits individuels sont définis comme suit :<br>\n<br>\nBit	Signification<br>\n0	Touche <span class=\"keyboard-key\">Maj</span> droite<br>\n1	Touche <span class=\"keyboard-key\">Maj</span> gauche<br>\n2	Touche <span class=\"keyboard-key\">Ctrl</span><br>\n3	Touche <span class=\"keyboard-key\">Alt</span><br>\n4	Verrouillage des majuscules<br>\n5	Bouton droit de la souris<br>\n6	Bouton gauche de la souris<br>\n7	<span class=\"keyboard-key\">Alt Gr</span> depuis TOS 4.06 (Milan)', '<div class=\"border-yellow\"><p>Note : La fonction interroge simplement une variable système interne du BIOS, dont l\'adresse peut être calculée via _sysbase si nécessaire. Pour TOS 1.0, cette variable système se trouve à l\'adresse 0xE1B.</p></div><br>\n<br>\n<span class=\"bold\">Valeur de retour :</span> La fonction retourne l\'état des touches de modification.<br>\n<br>\n<span class=\"bold\">Disponibilité :</span> Toutes les versions de TOS.<br>\n<br>\n<span class=\"code\">move.w    mode,-(sp)   ; Offset 2<br>\nmove.w    #$B,-(sp)    ; Offset 0<br>\ntrap      #13          ; Appel au BIOS<br>\naddq.l    #4,sp        ; Correction de la pile</span><br>\n', '', NULL, NULL, NULL, '', '', '', 2, 3, 2),
(28, 'Mediach', '', '', '<span class=\"bold\">Nom :</span> Vérification de changement de média<br>\n<span class=\"bold\">Opcode :</span> 9<br>\n<span class=\"bold\">Syntaxe :</span> int16_t Mediach ( int16_t dev );<br>\n<br>\n<span class=\"bold\">Description :</span> La routine BIOS Mediach établit si le média du périphérique dev a été changé depuis la dernière opération de disque du lecteur en question. Les valeurs valides pour dev sont :<br>\ndev	Signification<br>\n0	Lecteur A<br>\n1	Lecteur B<br>\n2	Lecteur C (similairement pour les autres lecteurs)<br>\n<br>\n<div class=\"border-red\"><p>Note : Il ne faut jamais supposer que le média d\'un périphérique ne peut pas être échangé (cartouche de disque amovible, CD-ROM, lecteur de disquette, disque Floptical, etc.). La reconnaissance d\'un changement de disquette fonctionne généralement de manière fiable seulement si la disquette n\'est pas protégée en écriture. Il est également important de noter que lors du formatage d\'une disquette, différents numéros de série seront attribués.</p></div><br>\n', '<span class=\"bold\">Valeur de retour :</span> La fonction retourne une valeur entière avec la signification suivante :<br>\n<br>\nValeur	Signification<br>\n0	Le média n\'a définitivement pas changé.<br>\n1	Le média pourrait avoir changé.<br>\n2	Le média a définitivement changé.<br>\n<br>\n<span class=\"bold\">Disponibilité :</span> Toutes les versions de TOS.<br>\n<br>\n<span class=\"code\">move.w    dev,-(sp)    ; Offset 2<br>\nmove.w    #9,-(sp)     ; Offset 0<br>\ntrap      #13          ; Appel au BIOS<br>\naddq.l    #4,sp        ; Correction de la pile</span><br>\n', '', NULL, NULL, NULL, '', '', '', 3, 3, 2),
(29, 'Rwabs', '', '', '<span class=\"bold\">Nom :</span> Lecture/Écriture absolue<br>\n<span class=\"bold\">Opcode :</span> 4<br>\n<span class=\"bold\">Syntaxe :</span> int32_t Rwabs ( int16_t rwflag, VOID *buff, int16_t cnt, int16_t recnr, int16_t dev, int32_t lrecno );;<br>\n<br>\n<span class=\"bold\">Description :</span> Description : La routine BIOS Rwabs lit ou écrit des données directement depuis ou vers le lecteur spécifié par dev. Le paramètre rwflag est un vecteur de bits qui spécifie le type d\'opération. Les valeurs valides sont :<br>\n<br>\nBit du rwflag	Signification<br>\n0	0 = Lecture, 1 = Écriture<br>\n1	0 = Prendre en compte le changement de média, 1 = Ne pas lire ou affecter l\'état de changement de média<br>\n2	0 = En cas d\'erreur, redémarrer une tentative, 1 = Ne pas redémarrer une tentative<br>\n3	0 = Mode normal, 1 = Mode physique (1)<br>\n<br>\nPour cela, un pilote de disque dur compatible avec AHDI 3.0 est requis.<br>\n', 'cnt secteurs depuis le tampon buff seront transférés. Dans recnr, le secteur de départ sur le lecteur sera spécifié. lrecno ne sera utilisé que si recnr a la valeur -1, et un pilote de disque dur compatible avec AHDI 3.0 est disponible.<br>\n<br>\n<span class=\"bold\">Valeur de retour :</span> La fonction retourne 0 en cas de succès, ou un code d\'erreur en cas d\'échec.<br>\n<br>\n<span class=\"bold\">Disponibilité :</span> Toutes les versions de TOS.<br>\n<br>\n<span class=\"code\">move.l    lrecno,-(sp)  ; Offset 14<br>\nmove.w    dev,-(sp)     ; Offset 12<br>\nmove.w    recnr,-(sp)   ; Offset 10<br>\nmove.w    cnt,-(sp)     ; Offset  8<br>\npea       buff          ; Offset  4<br>\nmove.w    rwflag,-(sp)  ; Offset  2<br>\nmove.w    #4,-(sp)      ; Offset  0<br>\ntrap      #13           ; Appel au BIOS<br>\nlea       $12(sp),sp    ; Correction de la pile</span><br>\n<br>\nGFA-Basic : <span class=\"code\">Fehler%=Bios(4,W:rwflag%,L:buff%,W:cnt%,W:recnr%,W:dev%,L:lrecno%)</span><br>\n', '', NULL, NULL, NULL, '', '', '', 3, 3, 2),
(30, 'Setexc', '', '', '<span class=\"bold\">Nom :</span> Définir le vecteur d\'exception<br>\n<span class=\"bold\"><span class=\"bold\">Opcode :</span> 5<br>\nSyntaxe : </span>int32_t Setexc ( int16_t number, VOID (*vec)() );<br>\n<br>\n<span class=\"bold\">Description :</span> La routine BIOS Setexc définit ou lit le contenu des vecteurs d\'exception. Les valeurs valides sont :<br>\n<br>\nParamètre	Signification<br>\nnumber	Numéro du vecteur<br>\nvec	Nouvelle adresse (ou -1)<br>\n<br>\n<div class=\"border-yellow\"><p>Note : Si vec est -1L, alors la valeur précédente du vecteur est retournée.<br>\nLe numéro du vecteur d\'exception à définir est, par ailleurs, identique à l\'adresse à définir divisée par 4.</p></div>', '<span class=\"bold\">Valeur de retour :</span> La fonction retourne la valeur précédente (ou actuelle) du vecteur.<br>\n<br>\n<span class=\"bold\">Disponibilité :</span> Toutes les versions de TOS.<br>\n<br>\n<span class=\"code\">pea       exchdlr      ; Offset 4<br>\nmove.w    number,-(sp) ; Offset 2<br>\nmove.w    #5,-(sp)     ; Offset 0<br>\ntrap      #13          ; Appel au BIOS<br>\naddq.l    #8,sp        ; Correction de la pile</span><br>\n', '', NULL, NULL, NULL, '', '', '', 3, 3, 2),
(31, 'Tickcal', '', '', '<span class=\"bold\">Nom :</span> Calcul de tick<br>\n<span class=\"bold\">Opcode :</span> 6<br>\n<span class=\"bold\">Syntaxe :</span> int32_t Tickcal ( VOID );<br>\n<br>\n<span class=\"bold\">Description :</span> La routine BIOS Tickcal retourne le nombre de millisecondes écoulées entre deux appels du temporisateur système.', '<span class=\"bold\">Note :</span> Pour cela, la fonction accède à la variable système _timr_ms.<br>\n<br>\n<span class=\"bold\">Valeur de retour :</span> Nombre de millisecondes correspondantes.<br>\n<br>\n<span class=\"bold\">Disponibilité :</span> Toutes les versions de TOS.<br>\n<br>\n<span class=\"code\">move.w    #6,-(sp)     ; Offset 0<br>\ntrap      #13          ; Appel au BIOS<br>\naddq.l    #2,sp        ; Correction de la pile</span><br>\n', '', NULL, NULL, NULL, '', '', '', 3, 3, 2),
(32, 'I. Émulateur ou Atari ST ?', '', '', 'Le premier outil, c’est bien évidemment la machine sur laquelle ce code est destiné. Il y a deux écoles, tu choisis la méthode que tu souhaites.<br>\n<br>\nSi tu as un Atari 520ST, c’est bien, mais tu seras vite bloqué dès que les choses deviendront sérieuses. <span class=\"bold\">Idéalement, je te conseille un 1040STe</span> pour sa compatibilité avec un périphérique appelé <span class=\"italic\">« Ultra Satan »</span>, qui permet de simuler un disque dur de l’époque.<br>\n<br>\nVoici sur la photo de droite à quoi çà ressemble : 2 lecteur de carte SD.<br>\n<br>\n<div class=\"border-red\"><p>Par contre vérifie que ton Atari est bien compatible avec ce périphérique, il va falloir lui ouvrir le ventre et vérifier la version de la puce DMA.</p></div><br>\n<br>\nJe ferai un petit article sur le sujet, ayant plusieurs machine en ma possession, mais ce n’est pas le sujet de cet article.', '', '', NULL, '1719525834993.png', NULL, '', '', '', 1, 1, 4),
(33, '', '', '', '', '', 'Si tu n’as pas de vraie machine chez toi, ce n’est pas très grave car il existe ce que l’on appelle des émulateurs, ce sont des  logiciels qui reproduisent l’interface et le comportement de l’Atari. <br>\n<br>\nIl en existe plusieurs, mais seuls deux sont réellement efficaces : <span class=\"hashtag\">Hatari 2.5</span> et <span class=\"hashtag\">Steem SSE</span> <span class=\"italic\">(personnellement, je ne suis pas à l’aise avec Steem SSE, je préfère Hatari, mais tu es libre de choisir celui qui te semble le plus adapté pour toi).</span><br>\nVoici où tu peux télécharger ces 2 émulateurs : <br>\n<a class=\"link\" href=\"https://hatari.tuxfamily.org/download.html\" target=\"blank\">Hatari download page</a><br>\n<a class=\"link\" href=\"https://sourceforge.net/projects/steemsse/\" target=\"blank\">STEem Sensei Software Edition</a><br>\n<br>\n', NULL, NULL, NULL, '', '', '', 1, 4, 4),
(34, '', '', '', '', '', '', '1719525898053.png', '1719525898054.png', NULL, '', '', '', 1, 2, 4),
(35, 'II.L’éditeur / assembleur / débugger', '', '', '<span class=\"underline\">1 – L’assembleur</span><br>\n<br>\nLe premier outil est l\'assembleur lui-même. Il sert à prendre le code que tu as tapé et à le transformer <span class=\"bold\">dans le seul langage compréhensible par un ordinateur : le langage machine</span> <span class=\"italic\">(un langage composé uniquement de 0 et de 1, également appelé langage binaire, mais nous y reviendrons plus tard).</span><br>\n<br>\n<span class=\"underline\">2 – L’éditeur</span><br>\n<br>\nCet outil est muni d\'un éditeur de texte qui te permet de taper du code. C\'est précisément ce code qui est destiné à être assemblé pour être ensuite stocké dans un fichier source. Ce fichier une fois exécuté est envoyé  dans la mémoire de l\'ordinateur (la RAM), où il sera lu. Voici un schéma à droite qui représente les différentes étapes.<br>\n', '', '', NULL, '1719525934558.png', NULL, '', '', '', 2, 1, 4),
(36, '', '', '', '', '<span class=\"underline\">3 – Le débugger</span><br>\nCet assembleur est souvent accompagné d’un débugger, qui peut être utilisé pour voir ce qui se passe dans la mémoire de l’ordinateur. <br>\nPar exemple, ton programme, une fois assemblé, exécuté puis envoyé dans la RAM, peut tout à fait être visible par ce débugger ; il permet notamment de suivre pas à pas le comportement de ton programme.<br>\n<br>\nSur <span class=\"italic\">Atari ST</span>, l’assembleur le plus populaire est <span class=\"hashtag\">DevPac v3</span> de chez Hisoft<span class=\"italic\"> (jette un œil dans le menu de l’unité C du site)</span>. Sur PC, plusieurs solutions sont possibles pour les éditeurs, par exemple le tout simple mais efficace <span class=\"hashtag\">Notepad++</span> ou carrément des IDE comme <span class=\"hashtag\">VS Code</span>.', '', NULL, NULL, NULL, '', '', '', 2, 6, 4),
(37, '', '', '', '', '', 'Cette introduction est terminée, mais il va falloir encore patienter un tout petit peu avant de commencer à coder quelque chose. Il faut configurer ton émulateur et pour débuter je te propose l’utilisation de <span class=\"hashtag\">Hatari</span> et de l’assembleur <span class=\"hashtag\">DevPac v3</span>.', NULL, NULL, NULL, '', '', '', 2, 4, 4),
(38, '', '', 'III. Configuration de l’émulateur Hatari', '', '', '<span class=\"underline\">1 – Le TOS</span><br>\n<br>\nLa première fois que tu vas lancer <span class=\"bold\">Hatari</span>, tu n’auras pas le bureau de GEM traditionnel que tu connais, mais un autre, c’est <span class=\"hashtag\">EmuTOS</span> ! Pour faire court, c’est un TOS plus évolué que l’original avec des options supplémentaires dans les menus entre autres choses. Pour vulgariser, le TOS c\'est le programme qui fait tourner ton Atari ST, tout comme Microsoft avait le DOS pour faire tourner Windows. Le GEM c\'est le nom de l\'interface toute verte qui sert de bureau.', NULL, NULL, NULL, '', '', '', 3, 4, 4),
(39, '', '', '', '', '', '', NULL, NULL, '1719526300168.png', '', '', '', 3, 5, 4),
(40, '', '', '', '', '', '<div class=\"border-green\"><p>Si tu préfères un TOS original, je te propose le <span class=\"hashtag\">TOS 1.62</span> qui correspond à la gamme des <span class=\"italic\">Atari 1040 STe</span>. Tu trouveras ton bonheur dans l’unité C du site (je n’ai mis que les TOS ‘french’).</p></div><br>\n<br>\nSi tu souhaites en revanche garder <span class=\"hashtag\">EmuTOS</span>, pas de souci mais on va en choisir un qui est en français, c’est quand même mieux. Bref, choisis ton TOS du moment qu’il est compatible avec un STE (bah oui, qui peut le plus peut le moins).', NULL, NULL, NULL, '', '', '', 3, 4, 4),
(41, '', '', '', 'Tu copies le fichier à la racine du répertoire de <span class=\"bold\">HATARI</span> ou, si tu préfères, tu te fais un dossier. Dans <span class=\"bold\">HATARI</span>, tu fais :<br>\n<br>\n<span class=\"keyboard-key\">F12</span> -> <span class=\"color-green\">ROM</span> et dans la zone <span class=\"color-green\">TOS Setup</span> tu peux voir qu’actuellement c’est le fichier <span class=\"italic\">tos.img</span> qui est mis par défaut.<br>\nDonc tu cliques sur le bouton <span class=\"color-green\">Browse</span> pour choisir le TOS que tu as téléchargé.<br>\n<br>\nPuis <span class=\"color-green\">OK</span> -> <span class=\"color-green\">Back to main menu</span> -> <span class=\"color-green\">Save config</span> -> <span class=\"color-green\">OK</span> -> <span class=\"color-green\">Reset machine</span> -> <span class=\"color-green\">OK</span> … et là PAF ! <br>\nUn nouveau TOS ! Ou pas … si <span class=\"bold\">HATARI</span> détecte un nouveau TOS, il va configurer tout seul le reste pour être en adéquation avec le TOS que tu lui as mis.<br>\n<br>\nEn général, tu as le message suivant :', '', '', NULL, NULL, NULL, '', '', '', 3, 1, 4),
(42, '', '', '', '', '', '', NULL, NULL, '1719526461590.png', '', '', '', 3, 5, 4),
(43, '', '', '', '', '', 'Et voilà ta machine est prête !<br>\n<br>\nEnfin … presque, il y a deux trois petites choses à savoir. Quand tu vas commencer à coder, tu vas devoir enregistrer tes programmes ainsi que tes nombreux fichiers de sprites sur des disquettes … <div class=\"border-red\"><p>mais là je te déconseille de miser sur ce support d’autant plus qu’à l’époque on pouvait brancher un disque dur au cul de l’Atari !</p></div> Et donc c’est ce que l’on va faire … au moins virtuellement !', NULL, NULL, NULL, '', '', '', 3, 4, 4),
(44, '', '', '', '', '', '', NULL, NULL, '1719526592996.png', '', '', '', 3, 5, 4),
(45, '', '2 – Hard Drive Disk', '', '', 'Les disques durs ACSI (Atari Computer System Interface) étaient des périphériques de stockage utilisés avec les micro-ordinateurs Atari ST. <br>\n<br>\nL\'<span class=\"hashtag\">ACSI</span> est une interface propriétaire développée par Atari, basée sur une version simplifiée de l\'interface <span class=\"hashtag\">SCSI</span> <span class=\"italic\">(Small Computer System Interface)</span>.', '', '1719526666443.png', NULL, NULL, '', '', '', 3, 6, 4),
(46, '', '', '', '', '', 'Il te faut une image vierge de ce support pour l’utiliser avec l’émulateur <span class=\"bold\">HATARI</span>, en voici une <a class=\"file\" href=\"assets/files/ACSI_harddrive_image.80.zip\" target=\"blank\">ACSI_harddrive_image.80</a> qui fait 80 Mb. Colles-moi ça à la racine de ton dossier Hatari.<br>\n<br>\nUn petit <span class=\"keyboard-key\">F12</span> -> <span class=\"color-green\">Hard Disks</span> et on va dans <span class=\"color-green\">ACSI HD</span> -> <span class=\"color-green\">Browse</span> et choisis le fichier que tu viens de copier.<br>\nEnsuite, coche la case <span class=\"color-green\">Boot from hard disk</span>, puis la même chose que d’habitude : <br>\n<span class=\"color-green\">Back to main menu</span> -> <span class=\"color-green\">Save config</span> -> <span class=\"color-green\">OK</span> -> <span class=\"color-green\">Reset machine</span> -> <span class=\"color-green\">OK</span>.<br>\n<br>\nLà tu devrais voir ceci. : ', NULL, NULL, NULL, '', '', '', 3, 4, 4),
(47, '', '', '', '', '', '', NULL, NULL, '1719526785197.png', '', '', '', 3, 5, 4),
(48, '', '', '', '', '', 'Si tu ouvres le disque C, tu verras qu’il n’y a rien mis à part un fichier nommé <span class=\"bold\">SHDRIVER.SYS</span>.<br>\n<br>\n<div class=\"border-red\"><p> NE L’EFFACE JAMAIS SINON TU PEUX DIRE ADIEU À CE QUE CONTIENT TON DISQUE DUR !</p></div><br>\n<br>\nBref, dans ce disque dur tu pourras y mettre par exemple <span class=\"bold\">DevPac</span>, tes sources (c’est comme ça qu’on appelle le code que tu vas taper) et tous les outils qui ont besoin à l’origine de lire des disquettes : gros gain de temps et d’ergonomie !<br>\n<br>\n<br>\nMais ce n’est pas encore suffisant, il y a mieux. <br>\nJe t’explique, une fois tes sources enregistrées dans ce disque dur de type <span class=\"bold\">ACSI</span>, c’est mort pour que tu puisses y avoir accès une fois l’émulateur fermé. Imagine le scénario : ton pote a un <span class=\"bold\">Ultra Satan</span> et il veut tester ton code sur sa machine, pas pratique sans accès direct aux fichiers depuis ton PC. Donc je te montre une solution magique, tu vas créer un dossier à la racine de ton répertoire où se trouve ton émulateur. <br>\n', NULL, NULL, NULL, '', '', '', 3, 4, 4),
(49, '', '', '', '', 'Tu vas l’appeler « Hard Drive » ou ce que tu veux, on s’en fout. Et dans ce même répertoire, tu vas créer plusieurs sous-dossiers genre D, E, F, G, H, I, J … etc.<br>\n<br>\nDans ton émulateur : <span class=\"keyboard-key\">F12</span> -> <span class=\"color-green\">Hard disk</span> -> <span class=\"color-green\">GEMDOS Drive</span>, tu choisis le dossier hard_drive que tu as créé, puis n’oublie pas de cocher la case <span class=\"color-green\">Add GEMDOS HD after</span> blablabl …<br>\n<span class=\"color-green\">Back to main menu</span> -> <span class=\"color-green\">Save config</span> -> <span class=\"color-green\">OK</span> -> <span class=\"color-green\">Reset machine</span> -> <span class=\"color-green\">OK</span>.<br>\n<br>\nAlors là tu te dis « mais il a craqué <span class=\"bold\">HATARI</span>, pourquoi il marque que c’est une cartouche ? » … et bien j’en sais rien, je me suis dit la même chose que toi, on va le virer : <br>\n<br>\nTu sélectionnes C : Cartouche et dans le menu du GEM tu vas dans <span class=\"color-green\">Options</span> -> <span class=\"color-green\">Installer une unité de disque</span> -> <span class=\"color-green\">Enlever</span>.', '', '1719526928842.png', NULL, NULL, '', '', '', 3, 6, 4),
(50, '', '', '', '', '', 'Ensuite tu refais la même manipulation en sélectionnant C : Disque. Mais cette fois-ci tu mets « installer » au lieu d’enlever comme ceci :', NULL, NULL, NULL, '', '', '', 3, 4, 4),
(51, '', '', '', '', '', '', NULL, NULL, '1719527007777.png', '', '', '', 3, 5, 4);
INSERT INTO `contents` (`id_contents`, `title_left`, `title_right`, `title_center`, `text_left`, `text_right`, `text_center`, `image_left`, `image_right`, `image_center`, `attachement_left`, `attachement_right`, `attachement_center`, `page`, `id_templates`, `id_articles`) VALUES
(52, '', '', '', '', '', 'À partir de maintenant, tous les fichiers que tu copieras dans le dossier <span class=\"bold\">hard_drive/D</span> de ton PC seront visibles également dans le GEM de ton émulateur ! À toi d’en créer le nombre que tu veux du moment que ça te permette d’être organisé pour la suite !<br>\n<br>\n<br>\n<span class=\"underline\">3 – Le clavier</span><br>\n<br>\nPour finir, la configuration du clavier dans l’émulateur doit être réglée sur  <span class=\"color-green\">Scancode</span>. Cela te simplifiera l’écriture du code en utilisant les touches réelles de ton clavier PC.<br>\nVoilà, c’est terminé ! À partir de maintenant, tu possèdes un <span class=\"bold\">Atari 1040 ST</span> dans ton PC ! Nous allons pouvoir passer à la suite !', NULL, NULL, NULL, '', '', '', 3, 4, 4),
(53, '', '', '', '', '', '', NULL, NULL, '1719527081890.png', '', '', '', 3, 5, 4),
(54, '', '', '', '', '', 'Dans ton premier cours <span class=\"italic\">« Savoir configurer ses outils de développement »</span>, je te parlais de la transformation de ton code source assembleur en <span class=\"color-red\">langage machine</span>, c\'est-à-dire en <span class=\"color-red\">binaire</span>. Le binaire est une suite de 0 et de 1. <span class=\"color-red\">Chaque 0 et chaque 1 sont ce que l\'on appelle un bit</span>.<br>\nPour faciliter la gestion des informations, ces valeurs binaires sont regroupées en ensembles de 8 bits, appelés octets. Un bit est la plus petite unité d\'information et peut être soit 0 soit 1. Un octet, contenant 8 bits, peut représenter 256 valeurs différentes, allant de 0 à 255. Nous explorerons plus en détail comment ces bits se combinent pour former des valeurs et comment ces valeurs sont utilisées par l\'ordinateur.<br>\n<br>\n<div class=\"border-yellow\"><p>Donc, pour résumer, retiens ceci :<br>\n* Langage machine = langage binaire<br>\n* Langage binaire = une suite de 0 et de 1 (appelés bits)<br>\n* Un octet = 8 bits<br>\n* La valeur d\'un octet peut aller de 0 à 255</p></div><br>\n', NULL, NULL, NULL, '', '', '', 1, 4, 5),
(56, '', '', '', 'Chaque position numérotée de 0 à 7, de droite à gauche, peut contenir un 0 ou un 1, formant ainsi un octet.<br>\nPourquoi est-ce important ? <span class=\"bold\">Parce que le processeur lit ces octets en mémoire vive (RAM) comme des instructions</span>. Pour lui, cette séquence d\'octets constitue un langage de commande. Chaque octet (ou ensemble d\'octets) est associé à une action spécifique que le processeur exécute.', '', '', NULL, '1721478870274.png', NULL, '', '', '', 1, 1, 5),
(57, '', '', '', '', '', 'Considérons l\'exemple de l\'instruction <span class=\"bold\">NOP</span>, l\'une des plus simples pour le processeur 68000. <span class=\"bold\">NOP</span> signifie \"ne rien faire\". Lorsque tu écris <span class=\"bold\">NOP</span> dans ton éditeur de code assembleur, cela se traduit par 2 octets consécutifs dont les valeurs sont respectivement 78 et 113. <span class=\"bold\"><span class=\"color-red\">Ces deux valeurs de 8 bits (autrement dit, \"ces deux octets de 8 bits\") combinées ensemble forment une instruction de 16 bits</span></span>. Cette instruction est appelée <span class=\"bold\">opcode</span>. Ces deux octets sont ensuite placés en RAM (mémoire vive) ou sauvegardés dans un fichier, selon tes besoins.<br>\nAinsi, lorsque le 68000 rencontre ces deux octets avec les valeurs 78 et 113, il les interprète comme l\'instruction <span class=\"bold\">NOP</span>. D\'autres valeurs auront des significations différentes, bien sûr.<br>\nPour compléter voici ci-dessous un aperçu d\'un mot (16bits) et d\'un mot long (32bits) : ', NULL, NULL, NULL, '', '', '', 1, 4, 5),
(58, 'Le Système Décimal', 'Le Système Binaire', '', 'Lorsque nous utilisons des chiffres dans la vie quotidienne, nous utilisons <span class=\"color-red\">le système décimal</span>. Ce système utilise dix symboles : 0, 1, 2, 3, 4, 5, 6, 7, 8 et 9. Par exemple, les nombres que nous connaissons et utilisons couramment sont écrits en décimal : 1, 2, 3, 10, 100, 150, 200, etc.', 'Contrairement au système décimal, il n\'utilise que deux symboles : 0 et 1. Comment je te l\'ai déjà dit à la page précédente chaque 0 ou 1 est appelé un \"bit\"  et un groupe de 8 bits forme un \"octet\" <span class=\"italic\">(oui je sais ... je me répète mais c\'est comme çà que çà va finir par rentrer dans ta tête)</span>. <br>\nVoici un exemple d\'un nombre en binaire : <span class=\"bold\">%10100111</span>. <br>\n<span class=\"color-red\">Le caractère % avant la suite de bits indique que le nombre est écrit en binaire.</span>', '', NULL, NULL, NULL, '', '', '', 2, 3, 5),
(60, 'Conversion binaire en décimale', '', '', 'Revenons à notre octet. La valeur d\'un octet dépend de ce qu\'il contient. Par exemple, l\'octet <span class=\"bold\">%10100111</span> en binaire peut être converti en décimal. Pour comprendre cela, nous devons connaître la valeur de chaque bit. Chaque position de bit a une valeur spécifique <span class=\"bold\">qui se compte toujours de la droite vers la gauche</span> : Le bit le plus à droite (bit 0) a une valeur de 1, le suivant (bit 1) a une valeur de 2, le suivant (bit 2) a une valeur de 4 etc.<br>\nEn additionnant les valeurs des bits qui sont à 1, nous obtenons la valeur décimale de l\'octet. Pour <span class=\"bold\">%10100111</span>, nous avons : 128 + 32 + 4 + 2 + 1 = <span class=\"bold\">167</span><br>\nLe schéma de droite est assez facile à comprendre <span class=\"italic\">(que j\'ai d\'ailleurs emprunté au site <a class=\"link\" href=\"https://asmtradcpc.zilog.fr/\" target=\"blank\">https://asmtradcpc.zilog.fr/</a>).</span>', '', '', NULL, '1721577202083.png', NULL, '', '', '', 2, 1, 5),
(61, '', '', 'Le Système Hexadécimal', '', '', 'Il existe également un système de numération appelé hexadécimal, qui est souvent utilisé en informatique, sans une compréhension parfaite de ce système tu n\'iras pas bien loin. Ce système utilise seize symboles : 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E et F.<br>\nVoici comment cela fonctionne :<br>\n* En décimal, nous comptons de 0 à 9, puis passons à 10.<br>\n* En hexadécimal, nous comptons de 0 à 9, puis nous continuons avec A (10 en décimal), B (11 en décimal), et ainsi de suite jusqu\'à F (15 en décimal).<br>\nVoici une séquence hexadécimale : <span class=\"bold\">$0, $1, $2, ..., $9, $A, $B, $C, $D, $E, $F</span><br>\nAprès $F, nous passons à $10 (16 en décimal), puis $11, $12, ... jusqu\'à $1F. Ce processus continue jusqu\'à $FF, qui équivaut à 255 en décimal.<br>\n<span class=\"color-red\">Le caractère $ avant la suite de bits indique que le nombre est écrit en hexadécimal.</span>', NULL, NULL, NULL, '', '', '', 3, 4, 5),
(62, '', 'Conversion décimal en binaire', '', '', 'C\'est tout aussi simple de convertir un nombre décimal en binaire. Prenons l\'exemple du nombre décimal 167. Le principe est simple : <span class=\"bold\"><span class=\"color-red\">on soustrait la valeur du bit la plus grande possible</span></span>. Donc, pour 167, on peut soustraire 128, et on met ce bit à \"1\". <br>\nTu vas me dire <span class=\"italic\">\"oui, mais on peut aussi utiliser 64\"</span>. Oui, mais NON, <span class=\"bold\">il faut que ce soit la valeur la plus grande possible</span>, donc 128.<br>\nOn doit procéder ainsi jusqu\'à ce que l\'on obtienne un reste de 0. Regarde à nouveau le schéma de gauche, c\'est assez simple à comprendre.', '', '1721579115783.png', NULL, NULL, '', '', '', 2, 6, 5),
(63, 'Conversion binaire en hexadécimal', '', '', 'Cette fois-ci, nous allons convertir notre octet binaire en hexadécimal. Je te rappelle que l\'hexadécimal est le système de numération que tu verras, par exemple, dans le débogueur de l\'assembleur DevPac.<br>\n<br>\nPour convertir un nombre binaire en hexadécimal (qu\'on appellera \"hexa\"), il suffit de <span class=\"color-red\">diviser l\'octet en deux parties</span>. Chaque partie est appelée un <span class=\"bold\">\"quartet\"</span> <span class=\"italic\">(oui, \"quartet\" comme \"4\" et \"octet\" comme \"8\", au cas où tu ne l\'aurais pas remarqué ;) )</span>. À gauche, en <span class=\"color-green\">vert</span>, tu as ce que l\'on appelle le <span class=\"color-green\">quartet de poids fort</span>, et à droite, en <span class=\"color-red\">rouge</span>, le <span class=\"color-red\">quartet de poids faible</span>. <br>\nEnsuite c\'est tout simple : il suffit d\'additionner les valeurs des bits de chaque quartet. Leur somme te donnera 2 valeurs <span class=\"italic\">(rappelle-toi que 10 en décimal correspond à $A en hexa)</span>.', '', '', NULL, '1721580830113.png', NULL, '', '', '', 3, 1, 5),
(64, '', '', 'Les valeurs supérieures à 255', '', '', 'Un octet est une série de 8 bits <span class=\"italic\">(oui, je sais, je le répète encore, et je comprends si tu commences à te lasser ! C\'est bon signe !)</span>. La valeur maximale d\'un octet est 255 <span class=\"italic\">(n\'oublie pas que 0 compte aussi comme une valeur)</span>. Mais on peut représenter des valeurs plus grandes en combinant plusieurs octets.<br>\n<br>\n<span class=\"underline\"><span class=\"bold\">Voici quelques définitions :</span></span><br>\n<div class=\"border-yellow\"><p>Une \"valeur 8 bits\" est un nombre entre 0 et 255 et utilise 1 octet.<br>\nUne \"valeur 16 bits\" est un nombre entre 0 et 65 535 et utilise 2 octets.<br>\nLorsque la valeur dépasse 255, elle utilise deux octets.</p></div><br>\nDans ce cas, <span class=\"bold\"><span class=\"color-red\">l\'octet de gauche est appelé le \"poids fort\" et l\'octet de droite est appelé le \"poids faible\"</span></span>.<br>\nLe poids faible représente une valeur de 0 à 255, tandis que le poids fort multiplie cette valeur par 256.<br>\n<br>\n<span class=\"underline\">Mais que se passe-t-il lorsque l\'on dépasse 255 ?</span><br>\nEh bien, la valeur décimale 255 étant la plus grande pour 1 octet signifie que tous ses bits sont à 1 : <span class=\"bold\">%<span class=\"color-green\">11111111</span></span>. Si on fait la somme de la valeur de tous les bits, on obtient bien : <span class=\"bold\">128 + 64 + 32 + 16 + 8 + 4 + 2 + 1 = 255</span>.<br>\nOn peut aussi noter cette valeur en binaire <span class=\"underline\">en utilisant 2 octets</span> : <span class=\"bold\">%<span class=\"color-red\">00000000</span> <span class=\"color-green\">11111111</span> = 255</span>. <span class=\"color-red\">À gauche, tu as l\'octet de poids fort</span>, qui est égal à 0, et <span class=\"color-green\">à droite, le poids faible</span>, qui est à 255 pour le moment.<br>\n<br>\n<span class=\"bold\">Mais que se passe-t-il si tu ajoutes 1 à l\'octet de poids faible ?</span><br>\nTu obtiens <span class=\"bold\">%<span class=\"color-red\">00000001</span> <span class=\"color-green\">00000000</span></span>. Tous les bits qui étaient à \"1\" dans l\'octet de poids faible sont passés à \"0\"! De plus, tu remarques que le bit le plus faible de l\'octet de poids fort passe de \"0\" à \"1\".', NULL, NULL, NULL, '', '', '', 3, 4, 5),
(65, 'Éléments de Gameplay', '', '', 'Le jeu tourne à 25Hz, avec des sprites de grande taille, le héros, et le défilement. Le jeu est conçu pour être compatible avec le clavier et le joystick. Trois boutons sont nécessaires : un pour l\'épée, un pour les actions magiques, et un pour afficher un tableau de choix d\'équipements. <span class=\"bold\">Samuel Blanchard</span> <span class=\"italic\">(l\'auteur de cette futur pépite)</span> a également introduit des éléments de gameplay tels que des sprites pré-calculés et des récompenses aléatoires pour maintenir l\'intérêt des joueurs.<br>\n<span class=\"italic\">(superbe titre \"Monster Boy In Dragon Land\" par <span class=\"bold\">Pépé Peek-poke</span>)</span>', '', '', NULL, '1721664825215.webp', NULL, '', '', '', 1, 1, 6),
(66, '', '', 'Développement des Niveaux', '', '', 'Le premier niveau du jeu, situé dans le pays des elfes, a commencé à prendre forme. Ce niveau test a été crucial pour permettre au héros de gagner une armure. Les retours sur ce niveau ont été positifs, notamment en ce qui concerne le rendu graphique. Mais les retour de quoi, de qui ??? Ah je vous ai pas dit, <span class=\"bold\">Samuel</span> a également partagé des vidéos et des démos jouables pour permettre aux membres de suivre les progrès en temps réel !<br>\nD\'ailleurs une discussion a été lancée sur le groupe pour déterminer si le jeu devrait avoir un monde ouvert ou fermé. Les membres ont exprimé des avis partagés, certains préférant un chemin linéaire tandis que d\'autres favorisaient une progression plus libre.', NULL, NULL, NULL, '', '', '', 1, 4, 6),
(68, '', '', '', '', '', '', '1721665306169.webp', '1721665306170.webp', NULL, '', '', '', 1, 2, 6),
(69, '', 'Fonctionnalités et Ajustements Techniques', '', '', 'Les progrès sont réguliers et impressionnants. Parmi les fonctionnalités récemment ajoutées figurent la gestion des points de vie des monstres, un système de récompenses aléatoires, et diverses améliorations de l\'animation et des interactions des objets. Par exemple, des pièces et des cœurs miniatures peuvent maintenant sauter avec ou sans rebond, et une nouvelle poussière apparaît après la mort d\'un monstre.', '', '1721665616834.webp', NULL, NULL, '', '', '', 1, 6, 6),
(73, 'Raster Studio', '', '', '<span class=\"bold\">Samuel</span> ne se contente pas de développer le jeu; il crée également ses propres outils pour optimiser le développement et faciliter / améliorer le processus de création. Récemment, il a introduit <span class=\"bold\"><a class=\"link\" href=\"https://apps.microsoft.com/detail/9n52p0rm4gvm\" target=\"blank\">Raster Studio</a></span>, une application dédiée à la génération de rasters pour Atari ST. <br>\nLes rasters sont essentiels pour créer des effets visuels dynamiques, comme les fondus et les dégradés de couleurs. Ce nouvel outil vise à simplifier et perfectionner l\'intégration de ces effets dans le jeu.<br>\n<br>\nConcernant la gestion des interruptions, essentielle pour les performances et la fluidité du jeu, <span class=\"bold\">Samuel</span> travaille à optimiser les cycles de l\'écran vertical (VBL). Le jeu tourne actuellement à 25Hz avec quelques grands sprites pour les méchants, les animations et le scrolling... et .... la musique ? Pas grave il est attentif à la consommation de VBL par la musique, afin de réduire cette consommation pour libérer des ressources CPU pour d\'autres fonctionnalités du jeu, mais quand on voit ce qu\'il est capable de réaliser je n\'ai aucun doute sur le résultat final !', '', '', NULL, '1721667548631.webp', NULL, '', '', '', 1, 1, 6),
(74, '', '', '', '', '', 'L\'enthousiasme autour de Miracle Boy in Dragon Land est palpable au sein de la communauté. Chaque mise à jour et nouvelle fonctionnalité est accueillie avec des éloges et des suggestions constructives, témoignant de l\'engagement et de l\'excitation collective pour ce projet qui, sans aucun doute, deviendra une référence pour les amateurs de jeux rétro sur Atari ST.<br>\n<br>\n<a class=\"link\" href=\"https://www.facebook.com/groups/383252337204206/user/1041409691\" target=\"blank\">Facebook de Samuel Blanchard</a><br>\n<a class=\"link\" href=\"https://www.facebook.com/groups/383252337204206\" target=\"blank\">Facebook du groupe Miracle Boy In Dragon Land</a><br>\n', NULL, NULL, NULL, '', '', '', 1, 4, 6),
(75, '', '', 'BIOS (& XBIOS)', '', '', '<span class=\"bold\"><span class=\"color-red\">0</span> E_OK</span> <span class=\"italic\">OK. Aucun problème n\'est survenu.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-1</span> ERROR</span> <span class=\"italic\">Erreur générique (non précisée exactement).</span><br>\n<span class=\"bold\"><span class=\"color-red\">-2</span> EDRVNR</span> <span class=\"italic\">Dispositif/lecteur adressé non prêt.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-3</span> EUNCMD</span> <span class=\"italic\">Commande spécifiée inconnue.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-4</span> E_CRC</span> <span class=\"italic\">Erreur lors de la lecture d\'un secteur / Erreur CRC.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-5</span> EBADRQ</span> <span class=\"italic\">Mauvaise demande / Le dispositif ne peut pas exécuter la commande.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-6</span> E_SEEK</span> <span class=\"italic\">Le lecteur n\'a pas pu atteindre la piste spécifiée.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-7</span> EMEDIA</span> <span class=\"italic\">Erreur de lecture (le support a un mauvais secteur de démarrage).</span><br>\n<span class=\"bold\"><span class=\"color-red\">-8</span> ESECNF</span> <span class=\"italic\">Secteur non trouvé.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-9</span> EPAPER</span> <span class=\"italic\">Imprimante non prête / Plus de papier.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-10</span> EWRITF</span> <span class=\"italic\">Erreur lors d\'une opération d\'écriture.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-11</span> EREADF</span> <span class=\"italic\">Erreur lors d\'une opération de lecture.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-12</span> EGENRL</span> <span class=\"italic\">Erreur générale.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-13</span> EWRPRO</span> <span class=\"italic\">Le support est protégé en écriture.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-14</span> E_CHNG</span> <span class=\"italic\">Le support a été changé après une opération d\'écriture.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-15</span> EUNDEV</span> <span class=\"italic\">Dispositif inconnu du système d\'exploitation.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-16</span> EBADSF</span> <span class=\"italic\">Secteurs défectueux détectés lors du formatage.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-17</span> EOTHER</span> <span class=\"italic\">Un autre disque doit être inséré.</span><br>\n<div class=\"border-red\"><p>Cette erreur apparaît uniquement si le lecteur B est accédé sans qu\'il ne soit connecté.<br>\nDans ce cas, l\'utilisateur est invité à insérer un disque dans le premier lecteur.</p></div><br>\n<br>\n<span class=\"bold\"><span class=\"color-red\">-18</span> EINSERT</span> <span class=\"italic\">Erreur MetaDOS : Insérez le support.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-19</span> EDVNRSP</span> <span class=\"italic\">Erreur MetaDOS : Le dispositif ne répond pas.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-128</span> SNDNOTLOCK</span> <span class=\"italic\">XBIOS Falcon : Système sonore non réservé.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-129</span> SNDLOCKED</span> <span class=\"italic\">XBIOS Falcon : Système sonore déjà réservé.</span><br>\n<br>\n', NULL, NULL, NULL, '', '', '', 1, 4, 7),
(76, 'GEMDOS', '', '', '<span class=\"bold\"><span class=\"color-red\">0</span> E_OK</span> <span class=\"italic\">OK. Aucun problème n\'est survenu.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-32</span> EINVFN</span> <span class=\"italic\">Numéro de fonction inconnu.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-33</span> EFILNF</span> <span class=\"italic\">Fichier non trouvé.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-34</span> EPTHNF</span> <span class=\"italic\">Répertoire (dossier) non trouvé.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-35</span> ENHNDL</span> <span class=\"italic\">Plus de poignées disponibles.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-36</span> EACCDN</span> <span class=\"italic\">Accès refusé.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-37</span> EIHNDL</span> <span class=\"italic\">Identifiant de fichier invalide.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-39</span> ENSMEM</span> <span class=\"italic\">Mémoire insuffisante.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-40</span> EIMBA</span> <span class=\"italic\">Adresse de bloc mémoire invalide.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-46</span> EDRIVE</span> <span class=\"italic\">Spécification de lecteur invalide.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-47</span> ECWD</span> <span class=\"italic\">Le répertoire courant ne peut pas être supprimé.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-48</span> ENSAME</span> <span class=\"italic\">Fichiers sur des lecteurs logiques différents.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-49</span> ENMFIL</span> <span class=\"italic\">Plus de fichiers ne peuvent être ouverts.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-58</span> ELOCKED</span> <span class=\"italic\">Segment d\'un fichier protégé (réseau).</span><br>\n<span class=\"bold\"><span class=\"color-red\">-59</span> ENSLOCK</span> <span class=\"italic\">Demande de suppression de verrou invalide.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-64</span> ERANGE</span> <span class=\"italic\">Pointeur de fichier dans un segment invalide (voir aussi message FreeMiNT -88).</span><br>\n<span class=\"bold\"><span class=\"color-red\">-65</span> EINTRN</span> <span class=\"italic\">Erreur interne de GEMDOS.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-66</span> EPLFMT</span> <span class=\"italic\">Format de chargement de programme invalide.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-67</span> EGSBF</span> <span class=\"italic\">Bloc mémoire alloué ne peut pas être agrandi.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-68</span> EBREAK</span> <span class=\"italic\">Interruption du programme par Control-C.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-69</span> EXCPT</span> <span class=\"italic\">Exception 68000 (bombes).</span><br>\n<span class=\"bold\"><span class=\"color-red\">-70</span> EPTHOV</span> <span class=\"italic\">Dépassement de chemin.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-80</span> ELOOP</span> <span class=\"italic\">Boucle infinie avec liens symboliques.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-81</span> EPIPE</span> <span class=\"italic\">Ecriture dans un pipe cassé.</span>', '<span class=\"bold\"><span class=\"color-red\">-82</span> EMLINK</span> <span class=\"italic\">Trop de liens.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-83</span> ENOTEMPTY</span> <span class=\"italic\">Répertoire non vide.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-85</span> EEXIST</span> <span class=\"italic\">Fichier existe déjà.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-86</span> ENAMETOOLONG</span> <span class=\"italic\">Nom trop long.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-87</span> ENOTTY</span> <span class=\"italic\">Pas un TTY.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-88</span> ERANGE</span> <span class=\"italic\">Erreur de plage.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-89</span> EDOM</span> <span class=\"italic\">Erreur de domaine.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-90</span> EIO</span> <span class=\"italic\">Erreur d\'entrée/sortie.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-91</span> ENOSPC</span> <span class=\"italic\">Plus d\'espace disponible sur le dispositif.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-100</span> EPROCLIM</span> <span class=\"italic\">Trop de processus pour l\'utilisateur.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-101</span> EUSERS</span> <span class=\"italic\">Trop d\'utilisateurs.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-102</span> EDQUOT</span> <span class=\"italic\">Quota dépassé.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-103</span> ESTALE</span> <span class=\"italic\">Descripteur de fichier NFS obsolète.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-104</span> EREMOTE</span> <span class=\"italic\">Objet distant.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-105</span> EBADRPC</span> <span class=\"italic\">Structure RPC invalide.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-106</span> ERPCMISMATCH</span> <span class=\"italic\">Version RPC incorrecte.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-107</span> EPROGUNAVAIL</span> <span class=\"italic\">Programme RPC non disponible.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-108</span> EPROGMISMATCH</span> <span class=\"italic\">Version de programme RPC incorrecte.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-109</span> EPROCUNAVAIL</span> <span class=\"italic\">Procédure RPC incorrecte pour le programme.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-110</span> ENOLCK</span> <span class=\"italic\">Aucun verrou disponible.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-111</span> EAUTH</span> <span class=\"italic\">Erreur d\'authentification.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-112</span> ENEEDAUTH</span> <span class=\"italic\">Authentificateur requis.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-113</span> EBACKGROUND</span> <span class=\"italic\">Opération inappropriée pour un processus en arrière-plan.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-114</span> EBADMSG</span> <span class=\"italic\">Pas un message de données.</span><br>\n<span class=\"bold\"><span class=\"color-red\">-115</span> EIDRM</span> <span class=\"italic\">', '', NULL, NULL, NULL, '', '', '', 1, 3, 7),
(77, 'Installation de DevPac 3.10', '', '', 'C\'est parti ! Tu vas commencer par télécharger l\'assembleur dont je t\'ai déjà parlé. Tu le trouveras sur ce site <span class=\"bold\">en cliquant sur les unités de disque</span>. Décompresse le contenu de l\'archive dans ton dossier <span class=\"bold\">Hatari</span> <span class=\"italic\">(ce sera plus simple à retrouver)</span>. D\'ailleurs, je crois qu\'<span class=\"bold\">Hatari</span> est capable de lire le fichier <span class=\"bold\">.st</span> contenu dans le <span class=\"bold\">.zip</span> sans avoir besoin de décompresser l\'archive.<br>\n<br>\nEnsuite, lance ton émulateur (pour ceux qui n\'ont pas de vraies machines) et charge ton fichier <span class=\"bold\">.st</span> <span class=\"color-red\">dans le lecteur de disquette A.</span><br>\n<br>\nAppuie sur <span class=\"keyboard-key\">F12</span> -> <span class=\"color-green\">Floppy disks</span> -> <span class=\"color-green\">Drive A: Browse</span> -> et cherche ton fichier. Pour quitter la configuration de l\'émulateur, tu es censé savoir comment faire désormais, je ne te l\'expliquerai plus.', '', '', NULL, '1721932618232.png', NULL, '', '', '', 1, 1, 8),
(78, '', '', '', '', '', '', '1721933424275.png', '1721933424278.png', NULL, '', '', '', 1, 2, 8),
(79, '', '', '', '', '', 'Tu vas devoir regarder dans la disquette et rechercher un programme appelé <span class=\"bold\">DEVINST.PGR</span>. C\'est le programme d\'installation de Devpac. Réponds <span class=\"bold\">YES</span> lorsqu\'il te demandera si tu possèdes un disque dur. (<span class=\"italic\">Alors oui, tout est en anglais, arrête de te plaindre ! Si tu es un vrai, tu lis EN ANGLAIS ! Et si ça ne te plaît pas, retourne glander sur TikTok !).</span> Normalement, tu laisses tout par défaut. Tu peux changer le C:/ si tu veux l\'installer ailleurs, par exemple sur D:/ ou E:/ ... bref, fais comme bon te semble, cela ne change absolument rien. <br>\n<br>\n<div class=\"border-red\"><p>Attention, il est possible que le programme d\'installation te sorte des erreurs comme d\'insérer le disque maître de Devpac. Ignore ces messages, ça fonctionnera.</p></div><br>\n<br>\nVoilà, <span class=\"bold\">DevPac 3.10</span> est installé sur ton disque dur. Cela te permettra d\'avoir un accès rapide à ton éditeur.', NULL, NULL, NULL, '', '', '', 1, 4, 8),
(81, '', 'Associer les fichiers sources', '', '', 'Dernière petite chose qui va te faire gagner du temps. Les fichiers sources contenant ton code assembleur se terminent par <span class=\"bold\">.S</span> (comme source). Il peut être pénible d\'ouvrir DevPac, puis de naviguer dans la fenêtre de chargement pour cliquer sur le fichier source à ouvrir.<br>\n<br>\nD\'autant plus que si tu stockes tes sources sur l\'unité <span class=\"bold\">D:/</span> ou <span class=\"bold\">E:/</span> <span class=\"italic\">(ce que je te conseille fortement afin de pouvoir y accéder depuis l\'extérieur de l\'émulateur)</span>, tu risques d\'avoir à faire un certain nombre de clics pour les atteindre.<br>\n<br>\nDonc, c\'est simple, cela se passe dans le bureau du GEM <span class=\"italic\">(le menu que tu vois sur ma capture d\'écran, c\'est le GemTos et non le TOS original)</span>. Va dans ton dossier <span class=\"bold\">Devpac</span> et sélectionne le programme <span class=\"bold\">DEVPAC.PRG</span> que tu viens d\'installer sur ton disque dur. Ensuite, vas dans <span class=\"color-green\">Option</span> -> <span class=\"color-green\">Installer application...</span><br>\n<br>\nTu n\'as qu\'à remplir le champ \"Type de document\" en saisissant S.', '', '1721935128031.png', NULL, NULL, '', '', '', 1, 6, 8),
(82, 'Configuration de DevPac', '', '', 'Tu vas créer ton premier fichier source ! Cela te permettra de naviguer un peu dans les menus de configuration de DevPac. Allez hop, tu exécutes <span class=\"bold\">DEVPAC.PRG</span>, et la première fenêtre que tu vois, c\'est ton éditeur de code ! C\'est là que tu devras saisir les instructions de tes programmes. Je vais te demander de saisir le texte suivant :<br>\n<span class=\"code\">;* Mon premier code source *<br>\n<br>\n; author : Mets ton nom<br>\n; creation date : Mets la date d\'aujourd\'hui<br>\n; ©2024</span><br>\n<br>\nRencontres-tu des problèmes pour saisir certains symboles ? Le pavé numérique te pose-t-il des soucis, par exemple ?', '', '', NULL, '1721936535237.png', NULL, '', '', '', 1, 8, 8),
(84, '', '', '', '', '', 'Pour le problème que tu rencontres avec le pavé numérique, rends-toi dans le menu <span class=\"color-green\">Options</span> -> <span class=\"color-green\">Preferences</span> ou bien <span class=\"keyboard-key\">Ctrl</span> + <span class=\"keyboard-key\">T</span>, décoche la case <span class=\"bold\">\"Cursor mode numeric keypad\"</span>, puis clique sur <span class=\"bold\">OK</span>. De retour dans ton éditeur de code, tu pourras utiliser le pavé numérique.<br>\n<div class=\"border-yellow\"><p>À noter que ces options de configuration doivent être sauvegardées avec le bouton <span class=\"bold\">Save As...</span> sous la forme d\'un fichier nommé <span class=\"bold\">HISOFTED.INF</span>, que DevPac range dans son dossier d\'installation. Sinon, à chaque ouverture de DevPac, les options se réinitialiseront.</p></div><br>\n<br>\nPour le symbole copyright ©, tu peux le trouver dans les caractères spéciaux. Ils se trouvent dans le menu <span class=\"color-green\">Edit</span> -> <span class=\"color-green\">ASCII Table... </span> ou bien <span class=\"keyboard-key\">Shift</span> + <span class=\"keyboard-key\">Ins</span>). Il te suffit de cliquer sur le caractère de ton choix pour l\'insérer dans ta fenêtre d\'édition.', NULL, NULL, NULL, '', '', '', 1, 4, 8),
(85, '', '', '', '', '', '', '1721938170145.png', '1721938170148.png', NULL, '', '', '', 1, 2, 8),
(86, '', '', '', 'Aller, c\'est fini ! Tu vois, ce n\'était ni long ni compliqué, mais ça fait partie des choses qu\'il faut savoir faire, comme sauvegarder ton fichier avant de quitter le programme. Menu <span class=\"color-green\">File</span> -> <span class=\"color-green\">Save</span> ou <span class=\"color-green\">Save As...</span><br>\n<br>\nD\'ailleurs, essaie de mémoriser les raccourcis clavier, <span class=\"underline\"><span class=\"bold\">tu gagneras énormément de temps</span></span>, et ça fait partie de ton apprentissage ... je dis ça, je ne dis rien ...<br>\n<span class=\"bold\">Save</span> c\'est <span class=\"keyboard-key\">Shift</span> + <span class=\"keyboard-key\">Alternate</span> + <span class=\"keyboard-key\">S</span><br>\n<span class=\"bold\">Save As ...</span> c\'est juste <span class=\"keyboard-key\">Alternate</span> + <span class=\"keyboard-key\">S</span><br>\n<br>\nBon, je te laisse fermer DevPac et double-cliquer sur ton fichier <span class=\"bold\">TEST.S</span>. Il va s\'ouvrir et lancer DevPac en même temps : une pierre, deux coups !', '', '', NULL, '1721938808562.png', NULL, '', '', '', 1, 1, 8),
(87, '', '', '', '', '', 'Je tiens à insister sur le fait que créer <span class=\"bold\"><span class=\"color-red\">un RAM Disk ne remplacera jamais un vrai disque dur</span></span>, même si ton Atari ST est équipé de 4 Mo de RAM. Cette utilisation n\'est pertinente que si l\'on souhaite, par exemple, travailler sur plusieurs fichiers, que ce soient des fichiers MIDI pour la musique, des fichiers textes pour croiser plusieurs courriers, ou, pire encore, plusieurs images à retoucher. Les accès aux fichiers sur un support tel que la disquette demandent un certain temps de chargement. En cela, créer un RAM Disk peut faire gagner du temps :<br>\n<br>\n * On copie une seule fois tous les fichiers dont on a besoin (quelque part dans la RAM).<br>\n * On travaille autant de fois que nécessaire sur ces fichiers.<br>\n * Une fois le travail terminé, on n\'oublie surtout pas de les sauvegarder à nouveau sur un support disquette.<br>\n<br>\n<div class=\"border-red\"><p><span class=\"underline\">Attention :</span> placer tes fichiers dans un RAM Disk n\'est pas sans risque. <span class=\"bold\">Cela peut entraîner une perte totale du travail réalisé !</span> Par exemple, si tu subis un gros plantage logiciel qui t\' obliges à redémarrer ta machine ... il faut y penser ! La RAM est une mémoire temporaire, donc tu es prévenu faudra pas venir pleurer !.</p></div>', NULL, NULL, NULL, '', '', '', 1, 4, 9),
(88, 'M-Disk, un outil très pratique !', '', '', 'C\'est un outil que tu trouveras dans <span class=\"bold\">l\'unité de disque E:/ </span>du site, appelé <span class=\"bold\">\"Utilitaires\"</span>. Tu le télécharges et tu insères cette disquette dans le lecteur A de ton émulateur ou de ton Atari. Ensuite, tu redémarres ta machine avec la disquette dans le lecteur pour booter dessus.<br>\n<br>\nLa disquette contient un fichier <span class=\"bold\">.ACC</span> (un fichier accessoire). Une fois que ton bureau GEM est affiché à l\'écran, va dans le menu Bureau, tu y verras <span class=\"bold\">M-Disk 6.0</span>. Clique dessus et nous allons configurer ton RAM Disk !', '', '', NULL, '1722028034199.png', NULL, '', '', '', 1, 1, 9),
(89, '', 'Configuration de M-Disk', '', '', 'Jette un œil sur la première ligne, c\'est la plus importante : <span class=\"bold\">\"Ram disk size\"</span>. C\'est ici que tu vas déterminer la taille de ta RAM Disk <span class=\"underline\">en octets</span>. Si tu possèdes un Atari avec 4 Mo de RAM, tu peux mettre, par exemple, 1 Mo ou même 2 Mo pour être tranquille, à toi de voir. Clique sur le bouton <span class=\"bold\">\"Remove\"</span>, puis saisis une valeur (<span class=\"italic\">en octets : 1000 pour 1 Mo, 2000 pour 2 Mo, etc.).</span><br>\n<br>\nTout en bas, c\'est écrit <span class=\"bold\">\"Label\"</span>. Moi, j\'ai déjà tout un tas d\'unités de disque dur, donc <span class=\"bold\">M-Disk</span> a détecté que l\'unité suivante disponible était <span class=\"bold\">M</span>. Mais si tu n\'as aucun disque dur, tu auras probablement <span class=\"bold\">C</span>. Clique sur <span class=\"bold\">OK</span>, et c\'est terminé !', '', '1722028542448.png', NULL, NULL, '', '', '', 1, 6, 9),
(90, '', '', '', '', '', 'De retour sur le bureau, tu dois ajouter cette nouvelle unité que l\'on vient de créer à l\'intérieur de la RAM. Pour cela, <span class=\"bold\">sélectionne l\'unité A</span> et dans le menu <span class=\"color-green\">Options</span>  -> <span class=\"color-green\">Installer une unité disque</span>.<br>\n<br>\nUne fenêtre de dialogue te demandera de préciser l\'unité. Tu dois choisir <span class=\"color-red\"><span class=\"bold\">C si M-Disk t\'a proposé C, ou une autre lettre selon ce que M-Disk t\'aura proposé</span></span> <span class=\"italic\">(dans mon cas c\'était M)</span>. Ensuite, indique un nom, celui que tu veux, ça n\'a pas d\'importance.', NULL, NULL, NULL, '', '', '', 1, 4, 9),
(91, '', '', '', '', '', '', '1722028991710.png', '1722028991714.png', NULL, '', '', '', 1, 2, 9),
(92, '', '', '', '', '', '', NULL, NULL, '1722029173503.png', '', '', '', 1, 5, 9),
(93, 'La RAM', '', '', 'La RAM est avant tout un composant électronique qui, selon le modèle d\'Atari, est soit soudé, soit clipsé dans des slots comme le montre la photo. Sur un <span class=\"bold\">Atari 1040STe</span>, il y a 4 slots. Il est donc possible d\'obtenir différentes combinaisons de RAM : <span class=\"bold\">512 Ko, 1 Mo, 2 Mo, 2,5 Mo ou 4 Mo</span>.<br>\n<br>\nLes 4 slots sont répartis sur <span class=\"underline\">deux banques de mémoire</span>. Chacune peut avoir une capacité de <span class=\"underline\">512 Ko ou 2 Mo</span>. Voici quelques combinaisons possibles :<br>\n<br>\n* Une banque de 512 Ko (512Ko au total),<br>\n* Deux banques de 512 Ko (1Mo au total),<br>\n* Une banque de 2 Mo (2Mo au total),<br>\n* Une banque de 2 Mo et une de 512 Ko (2.5Mo au total),<br>\n* Deux banques de 2 Mo (4Mo au total).<br>\n', '', '', NULL, '1722073300973.webp', NULL, '', '', '', 1, 1, 10),
(94, '', '', '', '', '', 'La mémoire (<span class=\"bold\">RAM</span> ou <span class=\"bold\">ROM</span> peut importe) est divisée en petits blocs appelés <span class=\"bold\">\"octets\"</span>. Pense aux octets comme des boîtes aux lettres dans une grande rue. Chaque boîte aux lettres (octet) a une adresse unique, ce qui permet à l\'ordinateur de trouver rapidement les informations stockées à cette adresse.<br>\nLa <span class=\"bold\">RAM</span> et la <span class=\"bold\">ROM</span> sont beaucoup plus rapide que les autres types de mémoire (comme les disques durs).', NULL, NULL, NULL, '', '', '', 1, 4, 10),
(95, 'RAM', 'ROM', '', 'RAM <span class=\"italic\">(Random Access Memory)</span> : Mémoire vive qui stocke temporairement les données que l\'ordinateur utilise pendant son fonctionnement. <span class=\"bold\"><span class=\"color-red\">On peut lire, écrire et effacer des données dans la RAM.</span></span><br>\n<span class=\"underline\">La RAM est volatile</span>, ce qui signifie que toutes les données qu\'elle contient sont perdues lorsque l\'ordinateur est éteint.<br>\nElle est utilisée pour charger et exécuter des programmes et des données temporaires. Par exemple, lorsqu\'un jeu est en cours d\'exécution, il utilise la RAM.<br>\nDe même que tout ce qui est visible à l\'écran c\'est un endroit spécifique de la RAM qui est visible', 'ROM <span class=\"italic\">(Read-Only Memory)</span> : Mémoire morte qui contient des données permanentes que l\'ordinateur <span class=\"bold\"><span class=\"color-red\">ne peut pas modifier ou effacer.</span></span><br>\n<span class=\"underline\">La ROM est non-volatile</span>, ce qui signifie que les données restent intactes même lorsque l\'ordinateur est éteint.<br>\nElle est utilisée pour stocker le firmware ou le BIOS de l\'ordinateur, c\'est-à-dire les programmes essentiels au démarrage et au fonctionnement de base de l\'ordinateur. <span class=\"underline\">Sur un Atari, le système d\'exploitation TOS est stocké en ROM.</span>', '', NULL, NULL, NULL, '', '', '', 1, 3, 10),
(96, 'Représentation de la RAM de l\' Atari', '', '', 'Voici une représentation incomplète mais simple, contenant juste ce qu\'il faut savoir pour commencer à comprendre ce qui se passe.<br>\n<br>\nComme je te l’ai dit précédemment, chaque octet de la RAM possède une adresse. Le premier octet est à l\'adresse <span class=\"bold\"><span class=\"color-green\">$000</span></span> <span class=\"italic\">(les adresses sont toujours en hexadécimal)</span> et les derniers octets sont aux adresses :<br>\n<br>\n* <span class=\"bold\"><span class=\"color-green\">$3FFFFF</span></span> pour une RAM de <span class=\"bold\">4 Mo</span><br>\n* <span class=\"bold\"><span class=\"color-green\">$27FFFF</span></span> pour une RAM de <span class=\"bold\">2,5 Mo</span><br>\n* <span class=\"bold\"><span class=\"color-green\">$0FFFFF</span></span> pour une RAM de <span class=\"bold\">1 Mo</span><br>\n* <span class=\"bold\"><span class=\"color-green\">$7FFFF</span></span> pour une RAM de <span class=\"bold\">512 Ko</span><br>\n<br>\nEntre <span class=\"bold\"><span class=\"color-green\">$000</span></span> et <span class=\"bold\"><span class=\"color-green\">$7FF</span></span>, il y a tout un tas de choses utilisées par le TOS, comme des variables et d\'autres vecteurs système. Ces adresses sont protégées et tu n’y as pas accès. Nous verrons plus tard qu\'il est possible d\'activer un mode spécifique pour y accéder.<br>\n<br>\nEntre <span class=\"bold\">$100000</span> et <span class=\"bold\">$1FFFFF</span>, et jusqu\'à <span class=\"bold\">$3F8000</span>, il n\'y a rien, enfin pas grand-chose. Pour le moment, on s\'en moque.<br>\n<br>\nCe qui est important, c\'est de comprendre que l\'écran logique <span class=\"italic\">(appelé frame buffer, c\'est-à-dire la partie de la RAM visible à l\'écran)</span>, quelle que soit la quantité de mémoire, <span class=\"underline\">se positionnera toujours en fin de RAM</span> :<br>\n<br>\nAvec <span class=\"bold\">4 Mo</span>, l\'écran sera placé à l\'adresse <span class=\"bold\"><span class=\"color-green\">$3F8000</span></span>.<br>\nAvec <span class=\"bold\">2,5 Mo</span>, il sera placé à l\'adresse <span class=\"bold\"><span class=\"color-green\">$278000</span></span>.<br>\nAvec <span class=\"bold\">2 Mo</span>, il sera placé à l\'adresse <span class=\"bold\"><span class=\"color-green\">$1F8000</span></span>.<br>\nAvec <span class=\"bold\">1 Mo</span>, il sera placé à l\'adresse <span class=\"bold\"><span class=\"color-green\">$0F8000</span></span>.<br>\nAvec <span class=\"bold\">512 Ko</span>, il sera placé à l\'adresse <span class=\"bold\"><span class=\"color-green\">$78000</span></span>.<br>\nPour donner une idée de la proportion, avec par exemple 1 Mo de RAM, le frame buffer ne représente que 3,2 % de la mémoire totale, c\'est très peu ! Donc, il y a beaucoup de place disponible.<br>\n<br>', '', '', NULL, '1722077439752.png', NULL, '', '', '', 2, 1, 10),
(98, '', '', 'Outil de Visualisation de la RAM', '', '', '<span class=\"bold\">The Ripper v3.1</span>, que tu peux dès maintenant télécharger depuis le site dans l\'unité de disque E (Utilitaire). Il va te permettre d\'explorer ce qui se passe dans la RAM de ton Atari. Il est important d\'apprendre à être curieux, et je t\'encourage à utiliser ce genre d\'outil très pratique.<br>\n<br>\nExécute simplement le fichier<span class=\"bold\"> .PRG</span> et observe bien ce que tu vois à l\'écran. Les couleurs que tu vois représentent les données sous forme d\'octets, qui, selon leur valeur, vont apparaître avec l\'une des 16 couleurs que possède l\'Atari ST. Tu peux faire défiler la mémoire pour voir plus loin en utilisant la combinaison des touches <span class=\"keyboard-key\">Shift</span> + Curseur Haut / Bas. Voilà je te laisse t\'amuser avec cet outil très pratique.', NULL, NULL, NULL, '', '', '', 2, 4, 10),
(99, '', '', '', '', '', '', NULL, NULL, '1722078306191.png', '', '', '', 2, 5, 10),
(101, '', '', '', '<span class=\"italic\">(ici on arrive au niveau du frame buffer, en fait on verra çà plus tard mais on peut s\'amuser à déplacer l\'écran physique. C\'est en fait ce que fait Ripper pour visualiser la RAM)</span>', '<span class=\"italic\">(les bandes verticales multicolores représentent la mémoire non accessible, j\'ai 4Mo de RAM, donc au delà, la mémoire n\'existe pas)</span>', '', NULL, NULL, NULL, '', '', '', 2, 2, 10),
(102, '', '', '', '', '', '', '1722079765282.png', '1722079765283.png', NULL, '', '', '', 2, 2, 10),
(103, '', 'Le contenu de la RAM avec un debugger', '', '', 'À ce stade de ton apprentissage, tu es censé avoir déjà installé et configuré <span class=\"bold\">DevPac</span>. Si ce n\'est pas encore fait, consulte le cours <span class=\"italic\">\"Savoir configurer les outils de développement - Partie 2\".</span><br>\n<br>\nC\'est très simple : démarre le programme DevPac et, une fois arrivé dans l\'éditeur, sans avoir besoin de saisir quoi que ce soit, appuie sur <span class=\"keyboard-key\">Alternate</span> + <span class=\"keyboard-key\">A</span> pour assembler ton code <span class=\"italic\">(même si le code est vide, il est nécessaire d\'assembler quelque chose pour accéder au débogueur de DevPac).</span><br>\n<br>\nPour ouvrir le débogueur <span class=\"italic\">(qui, au passage, s\'appelle Monst... oui, c\'est un nom un peu étrange)</span>, utilise le raccourci <span class=\"keyboard-key\">Alternate</span> + <span class=\"keyboard-key\">D</span>.', '', '1722080617316.png', NULL, NULL, '', '', '', 2, 6, 10),
(104, '', '', '', '', '', 'Tu remarques trois fenêtres : <span class=\"bold\">Registers, Disassembly PC et Memory.</span> Observe les fenêtres 2 et 3 : <span class=\"bold\"><span class=\"color-red\">dans la colonne de gauche, ce sont les adresses de la mémoire</span></span>. Le symbole $ n\'est pas présent, mais il s\'agit de valeurs hexadécimales.<br>\n<br>\nJe vais te faire réaliser une manipulation qui sera très utile pour plus tard. Utilise le raccourci <span class=\"keyboard-key\">TAB</span> pour naviguer entre les trois fenêtres et arrête-toi sur la fenêtre n°3 (Memory) et utilise le raccourci <span class=\"keyboard-key\">M</span>.<br>\nUne fenêtre s\'ouvre avec l\'invite <span class=\"bold\">\"Window start address?\"</span>... Pas besoin de détails supplémentaires ici, je crois que tu viens de comprendre.<br>\n<br>\nSaisis l\'adresse <span class=\"bold\">$44E</span> et valide. Maintenant, regarde la fenêtre Memory ; ton débogueur pointe désormais sur l\'adresse que tu viens de saisir !<br>\nJuste à droite de la colonne des adresses, tu verras <span class=\"bold\"><span class=\"color-red\">la colonne des octets contenus à cette adresse</span></span>, c\'est-à-dire : <span class=\"bold\">$00 $3F $80 $00</span>, <span class=\"bold\">quatre octets qui, regroupés, forment un long word </span>: <span class=\"bold\">$003F8000</span>. Cette valeur te dit-elle quelque chose ?<br>\n<br>\n... Réfléchis bien ...<br>\n<br>\nJe te donne la réponse : cette valeur correspond à l\'adresse de ton <span class=\"bold\">framebuffer</span> <span class=\"underline\">pour une configuration de 4 Mo</span>. Oui, beaucoup de choses intéressantes sont stockées dans cette partie de la RAM !<br>\n<br>\nTu peux quitter le débogueur en utilisant deux fois le raccourci <span class=\"keyboard-key\">Ctrl</span> + <span class=\"keyboard-key\">C</span> <span class=\"italic\">(la première fois, cela termine le programme, et la deuxième fois, cela quitte Monst)</span>', NULL, NULL, NULL, '', '', '', 2, 4, 10),
(105, '', '', '', '', '', 'Je vais commencer par te parler d\'une instruction, probablement la plus importante : l\'instruction <span class=\"bold\"><span class=\"color-blue\">move</span></span>. En anglais, <span class=\"bold\">move</span> signifie bouger ou déplacer. Donc, l\'utilisation de cette instruction nous amène à devoir déplacer ou charger quelque chose quelque part. En assembleur 68000, avec cette instruction, nous chargerons parfois <span class=\"bold\"><span class=\"underline\">des adresses</span></span>, parfois <span class=\"bold\"><span class=\"underline\">des valeurs</span></span>. Et où met-on cela ? <span class=\"bold\"><span class=\"underline\">Dans des registres</span></span> !<br>\nUn registre, c\'est comme un tiroir <span class=\"underline\">où l\'on stocke des valeurs ou on fait des opérations</span>. On peut aussi le voir comme une variable en mathématiques, par exemple y = 12. Dans ce cas, \"y\" serait le nom du registre et 12 la valeur qu\'il contient.<br>\nLes registres sont propres au microprocesseur, donc on ne choisit pas leur nom. Il en existe 16, répartis en deux catégories :<br>\n<br>\n<span class=\"bold\"><span class=\"underline\">Registres de données (d0 à d7) :</span></span><br>\nIl y a 8 registres de données : d0, d1, d2, d3, d4, d5, d6, d7.<br>\n<span class=\"color-red\"><span class=\"bold\">Ils servent à stocker des données numériques</span></span>.<br>\n<br>\n<span class=\"bold\"><span class=\"underline\">Registres d\'adresses (a0 à a7) :</span></span><br>\nIl y a 8 registres d\'adresses : a0, a1, a2, a3, a4, a5, a6, a7.<br>\n<span class=\"bold\"><span class=\"color-red\">Ils servent à stocker des adresses.</span></span><br>\n<br>\nCertains registres sont particuliers, comme le registre a7, aussi appelé <span class=\"bold\">SP</span> (Stack Pointer), qui est le registre de pile <span class=\"italic\">(ne pense pas à une pile de 9 volts, mais plutôt à une pile d\'assiettes).</span> Les trois premiers registres de chaque catégorie (d0, d1, d2 et a0, a1, a2) sont appelés <span class=\"bold\">\"crash registers\"</span>. Ils peuvent recevoir des renvois de données suite à des appels GEMDOS ou XBIOS, mais on verra cela plus tard.', NULL, NULL, NULL, '', '', '', 1, 4, 11);
INSERT INTO `contents` (`id_contents`, `title_left`, `title_right`, `title_center`, `text_left`, `text_right`, `text_center`, `image_left`, `image_right`, `image_center`, `attachement_left`, `attachement_right`, `attachement_center`, `page`, `id_templates`, `id_articles`) VALUES
(106, '', '', 'move <#value>, reg', '', '', 'Pour commencer, voici deux petites choses : il est possible <span class=\"color-green\">de mettre des commentaires</span> dans ton code pour décrire ce qu\'il fait, si besoin. Pour cela il suffit de saisir <span class=\"keyboard-key\">;</span> et tout ce qui sera écrit après, sera ignoré. Et enfin, pour écrire une instruction en assembleur 68000, il faut indenter chaque ligne de code en utilisant la touche <span class=\"keyboard-key\">Tab</span>.<br>\nSaisis le code suivant dans l\'éditeur :<br>\n<span class=\"code\">; je charge la valeur décimale 128 dans le registre d0<br>\n          move    #128,d0</span><br>\n<div class=\"border-green\"><p>A retenir:<br>\nmove est une instruction<br>\n#128 et d0 sont des opérandes (la source et la destination)</p></div><br>\n<div class=\"border-red\"><p>Attention:<br>\nLe # juste avant la valeur 128 indique que 128 est bien une valeur et non une adresse !</p></div>', NULL, NULL, NULL, '', '', '', 1, 1, 11),
(107, '', '', '', 'Ensuite, regardons comment les choses se passent dans la RAM. Assemble ton programme avec <span class=\"keyboard-key\">Alternate</span> + <span class=\"keyboard-key\">A</span>. Si tu n\'as pas fait d\'erreur <span class=\"italic\">(DevPac vérifiera ton code et te le signalera si c\'est le cas)</span>, tu pourras passer à l\'étape suivante.<br>\nPour cela, dirige-toi vers le débogueur avec <span class=\"keyboard-key\">Alternate</span> + <span class=\"keyboard-key\">D</span>. <br>\n<br>\n<div class=\"border-yellow\"><p>Remarques : <br>\nDans la fenêtre <span class=\"bold\">\'Registers\'</span> tu vois le nom de tes registres et ce qu\'il y a dedans !</p></div><br>\n<br>', '', '', NULL, '1722107822442.png', NULL, '', '', '', 1, 1, 11),
(108, '', '', '', '', '', 'Dans la fenêtre <span class=\"bold\">\'Disassembly pc\'</span>, tu lis <span class=\"bold\">move.w #$80,d0</span>. <span class=\"underline\">Le programme a traduit automatiquement la valeur décimale 128 en valeur hexadécimale</span>, donc <span class=\"bold\">$80</span>.<br>\n<br>\nLe programme a également ajouté le suffixe <span class=\"bold\">.w</span> après l\'instruction <span class=\"bold\">move</span>. DevPac est configuré par défaut pour ajouter l\'indication de la longueur de donnée que l\'on manipule, autrement dit, un word (2 octets). À partir de maintenant, nous ajouterons toujours de suffixe:<br>\n<span class=\"bold\"><span class=\"color-red\">.b</span></span> (byte) : 1 octet / 8 bits <span class=\"italic\">(valeurs de <span class=\"color-red\">0</span> à <span class=\"color-red\">255</span> ou $0 à $FF)</span><br>\n<span class=\"bold\"><span class=\"color-red\">.w</span></span> (word) : 2 octets / 16 bits <span class=\"italic\">(valeurs de <span class=\"color-red\">256</span> à <span class=\"color-red\">65 535</span> ou $0100 à $FFFF)</span><br>\n<span class=\"bold\"><span class=\"color-red\">.l</span></span> (long word) : 4 octets / 32 bits (valeur de <span class=\"color-red\">65 536</span> à <span class=\"color-red\">4 294 967 295</span> ou $010000 à $FFFFFFFF)<br>\nTrès bien, ensuite c\'est facile. Tu vas pouvoir exécuter ton programme \"pas à pas\" : on appelle ça le mode \"trace\", comme si on disait \"tracer le code\", en appuyant sur <span class=\"keyboard-key\">Ctrl</span> + <span class=\"keyboard-key\">Z</span>.<br>\nEt à présent regarde le registre <span class=\"bold\">d0</span>. La valeur <span class=\"bold\">$80</span> a été stocké dedans.<br>\n', NULL, NULL, NULL, '', '', '', 1, 4, 11),
(109, '', 'Les messages d\'erreurs', '', '', 'Mais alors, que se passe-t-il si je génère une erreur avec ce code, par exemple ?<br>\nCopier ce code :<br>\n<span class=\"code\">; test de message d\'erreur<br>\nmove.b     #1794, d0</span><br>\nDans cet exemple, j\'ai ajouté <span class=\"bold\"><span class=\"color-red\">.b</span></span> après mon instruction <span class=\"bold\">move</span> pour indiquer qu\'elle va manipuler une valeur de la taille d\'un octet. Cependant, la valeur indiquée (1794) est trop grande pour un octet et nécessite plutôt 2 octets (un \"word\").<br>\n<br>\nDevPac est équipé d\'un système de gestion des erreurs qui utilise 2 passes :<br>\n<br>\n<span class=\"underline\">Pass 1 :</span> Il vérifie la syntaxe. Dans notre exemple, la syntaxe est correcte.<br>\n<span class=\"underline\">Pass 2 :</span> Il vérifie la cohérence. Dans ce cas, l\'erreur \"data too large\" (données trop grandes) est générée.<br>\n<br>\nDe plus, DevPac donne des précisions comme le numéro de la ligne et le nom du fichier où l\'erreur a été trouvée. Il peut même automatiquement te montrer l\'erreur en plaçant le curseur directement dessus !', '', '1722168504603.png', NULL, NULL, '', '', '', 1, 6, 11),
(111, '', '', 'Afficher un truc à l\'écran', '', '', 'Si tu te rappelles du cours précédent, je t\'avais parlé d\'une adresse importante : <span class=\"bold\">$44E</span>. Cette adresse se situe au début de la RAM et contient un long mot (4 octets) <span class=\"bold\">correspondant à l\'adresse du frame buffer</span> (ton écran).<br>\n<br>\nCette adresse, comme toutes celles du système, tu ne peux pas l\'utiliser dans ton code, elle est protégée<span class=\"italic\"> (si tu essaies, tu obtiendras un joli \"bus error\" dans ton débogueur)</span>. En revanche, tu peux voir ce qu\'elle contient en utilisant la fenêtre <span class=\"bold\">Memory</span> et la touche <span class=\"keyboard-key\">M</span> <span class=\"italic\">(nous avons déjà vu cela dans le cours précédent, donc je pars du principe que tu maîtrises cette option).</span><br>\n<br>\nNote la valeur que cette adresse contient. Pour un Atari avec 4 Mo de RAM, tu devrais trouver : <span class=\"bold\">$3F8000</span>.', NULL, NULL, NULL, '', '', '', 2, 4, 11),
(112, '', '', '', 'Allez, on envoie un octet à l\'adresse de l\'écran :<br>\n<span class=\"code\">; afficher un octet à l\'écran<br>\nmove.b #255, $3F8000</span><br>\nEnsuite, comme d\'habitude :<br>\n* <span class=\"keyboard-key\">Ctrl</span> + <span class=\"keyboard-key\">A</span> pour assembler<br>\n* <span class=\"keyboard-key\">Ctrl</span> + <span class=\"keyboard-key\">D</span> pour lancer le débogueur (c\'est la dernière fois que je précise ces raccourcis)<br>\n* <span class=\"keyboard-key\">Ctrl</span> + <span class=\"keyboard-key\">Z</span> pour tracer le code (je considère que c\'est acquis).<br>\n<br>\nPour avoir un aperçu de ce qui se passe à l\'écran, utilise la touche <span class=\"keyboard-key\">V</span>. Utilise la même touche pour revenir au débogueur.', '', '', NULL, '1722171073560.png', NULL, '', '', '', 2, 1, 11),
(113, '', '', '', '', '', 'Bravo ! Tu as réussi à afficher un octet <span class=\"underline\">sur la première ligne de l\'écran</span> ! Tu peux évidemment t\'amuser à tester différents endroits de l\'écran en changeant l\'adresse à $3F8001, $3F8002, $3F8003, $3F8004, etc. Je te laisse chercher un peu. Tu vas trouver par toi-même l\'adresse de la ligne suivante, et ainsi, tu connaîtras la valeur en octets de la longueur d\'une ligne.<br>\n<br>\n<div class=\"border-yellow\"><p>Astuce :<br>\nAu lieu d\'afficher 1 seul octet sur chaque adresse, le 68000 permet d\'envoyer 4 octets d\'un coup en utilisant des mots longs :<br>\n<span class=\"code\">move.l #$FFFFFFFF, $3F8000</span><br>\nCela permet un envoi à l\'écran tous les 4 octets. Donc, le prochain sera à l\'adresse $3F8004, puis $3F8008, etc.</p></div>', NULL, NULL, NULL, '', '', '', 2, 4, 11),
(114, 'Et si on utilisait les registres ?', 'add <#valeur>,reg', '', 'Tu as trouvé l\'adresse de la ligne suivante ? Et tu as vu à quel point c\'est laborieux ? Eh bien, c\'était pour te montrer ce qu\'il ne faut pas faire. Avec les registres, c\'est beaucoup plus pratique et ton code sera également plus facile à relire. Car sinon ton code risque fortement de ressemble à ceci :<br>\n<span class=\"code\">; mauvais exemple<br>\n          move.l #$FFFFFFFF,$3F8000<br>\n          move.l #$FFFFFFFF,$3F8004<br>\n          move.l #$FFFFFFFF,$3F8008<br>\n          move.l #$FFFFFFFF,$3F800C<br>\n          move.l #$FFFFFFFF,$3F8010<br>\n          move.l #$FFFFFFFF,$3F8014<br>\n          move.l #$FFFFFFFF,$3F8018<br>\n          move.l #$FFFFFFFF,$3F801C<br>\n          move.l #$FFFFFFFF,$3F8020<br>\n          move.l #$FFFFFFFF,$3F8024<br>\n          move.l #$FFFFFFFF,$3F8028</span><br>\n<br>\nOn va transférer toutes nos valeurs et adresses dans les registres adéquats :<br>\n<span class=\"code\">          move.l #$FFFFFFFF, d0   ; on charge une donnée dans d0<br>\n          move.l #$3F8000, a0     ; on charge une autre donnée dans a0<br>\n          move.l d0, (a0)         ; on charge ce que contient d0 à l\'adresse contenue dans a0<br>\n          move.l #$3F8004, a0     ; on charge l\'adresse suivante dans a0<br>\n          move.l d0, (a0)         ; on charge ce que contient d0 à l\'adresse contenue dans a0<br>\n          move.l #$3F8008, a0     ; on charge l\'adresse suivante dans a0<br>\n          move.l d0, (a0)         ; on charge ce que contient d0 à l\'adresse contenue dans a0<br>\n          move.l #$3F800C, a0     ; on charge l\'adresse suivante dans a0<br>\n          move.l d0, (a0)         ; on charge ce que contient d0 à l\'adresse contenue dans a0</span><br>\n<br>\n<div class=\"border-red\"><p>Attention:<br>\nIl ne faut pas oublier les parenthèses autour de a0. Si on écrit <span class=\"bold\">move.l d0, a0</span>, cela signifie que l\'on copie la valeur contenue dans d0 à l\'intérieur du registre a0 <span class=\"italic\">(donc d0 = a0)</span>, et non à l\'adresse contenue dans a0.</p></div><br>\n', 'L\'utilisation des registres permet entre autre <span class=\"underline\">de faire des opérations mathématiques</span>, ce qui, dans notre cas, va être pratique, car on ne va tout de même pas se taper toutes les adresses de l\'écran à la main ! Donc, on va apprendre une nouvelle instruction : <span class=\"bold\">add</span>, qui, comme son nom l\'indique, permet de faire <span class=\"bold\">une addition</span>.<br>\n<span class=\"italic\">Exemple :</span><br>\n<span class=\"code\">add.l #4, a0   ; on additionne 4 au mot long contenu dans a0</span><br>\nSi <span class=\"bold\">a0</span> contenait <span class=\"bold\">$3F8000</span>, une fois cette instruction exécutée, <span class=\"bold\">a0</span> contient <span class=\"bold\">$3F8004</span> ! Ton code va donc ressembler à ceci :<br>\n<span class=\"code\">; faire une addition sur l\'adresse écran<br>\n          move.l #$FFFFFFFF, d0   ; on charge une donnée dans d0<br>\n          move.l #$3F8000, a0     ; on charge une adresse dans a0<br>\n          move.l d0, (a0)         ; on charge ce que contient d0 à l\'adresse contenue dans a0<br>\n          add.l #4, a0            ; on additionne 4 au mot long contenu dans a0<br>\n          move.l d0, (a0)         ; on charge ce que contient d0 à l\'adresse contenue dans a0<br>\n          add.l #4, a0            ; on additionne 4 au mot long contenu dans a0<br>\n          move.l d0, (a0)         ; on charge ce que contient d0 à l\'adresse contenue dans a0<br>\n          add.l #4, a0            ; on additionne 4 au mot long contenu dans a0<br>\n          move.l d0, (a0)         ; on charge ce que contient d0 à l\'adresse contenue dans a0<br>\n          add.l #4, a0            ; on additionne 4 au mot long contenu dans a0<br>\n          move.l d0, (a0)         ; on charge ce que contient d0 à l\'adresse contenue dans a0<br>\n; etc ...</span><br>\n<div class=\"border-yellow\"><p>Astuce :<br>\nDevPac propose des directives comme <span class=\"bold\">REPT</span> et <span class=\"bold\">ENDR</span> qui permettent de répéter plusieurs fois une section du code. Ces directives <span class=\"bold\"><span class=\"underline\">NE SONT PAS DES INSTRUCTIONS</span></span> que le 68000 comprend ; c\'est propre à DevPac et à son langage d\'assembleur.</p></div><br>\nMaintenant on va faire un tour de magie, regarde ce que ton code va devenir grâce à ces directives : <br>\n<span class=\"code\">; faire une addition sur l\'adresse écran<br>\n          move.l #$FFFFFFFF, d0   ; on charge une donnée dans d0<br>\n          move.l #$3F8000, a0     ; on charge une adresse dans a0<br>\n          move.l d0, (a0)         ; on charge ce que contient d0 à l\'adresse contenue dans a0<br>\n          REPT 16          ; on va boucle 16 fois le code suivant<br>\n          add.l #4, a0            ; on additionne 4 au mot long contenu dans a0<br>\n          move.l d0, (a0)         ; on charge ce que contient d0 à l\'adresse contenue dans a0<br>\n          ENDR          ; fin de la boucle</span><br>\n<br>\n', '', NULL, NULL, NULL, '', '', '', 2, 3, 11),
(115, '', '', '', '', '', 'Considérons l\'exemple de l\'instruction <span class=\"bold\">NOP</span>, l\'une des plus simples pour le processeur 68000. <span class=\"bold\">NOP</span> signifie \"ne rien faire\". Lorsque tu écris <span class=\"bold\">NOP</span> dans ton éditeur de code assembleur, cela se traduit par 2 octets consécutifs dont les valeurs sont respectivement 78 et 113. <span class=\"bold\"><span class=\"color-red\">Ces deux valeurs de 8 bits (autrement dit, \"ces deux octets de 8 bits\") combinées ensemble forment une instruction de 16 bits</span></span>. Cette instruction est appelée <span class=\"bold\">opcode</span>. Ces deux octets sont ensuite placés en RAM (mémoire vive) ou sauvegardés dans un fichier, selon tes besoins.<br>\nAinsi, lorsque le 68000 rencontre ces deux octets avec les valeurs 78 et 113, il les interprète comme l\'instruction <span class=\"bold\">NOP</span>. D\'autres valeurs auront des significations différentes, bien sûr.<br>\nPour compléter voici ci-dessous un aperçu d\'un mot (16bits) et d\'un mot long (32bits) : ', NULL, NULL, NULL, '', '', '', 1, 5, 5),
(117, '', '', 'L\' adressage', '', '', 'Tu sais maintenant que la mémoire est codée en binaire et qu\'on peut la regrouper en <span class=\"bold\">Octet</span> <span class=\"italic\">(Bytes)</span>, <span class=\"bold\">Mot</span> <span class=\"italic\">(Word)</span> et <span class=\"bold\">Long Mot</span> <span class=\"italic\">(Long Word)</span>. Cependant, on ne peut pas mettre n\'importe quoi à n\'importe quelle adresse : <span class=\"bold\"><span class=\"color-red\"><span class=\"underline\">il faut tenir compte de la parité des adresses</span> </span></span>(paire ou impaire).<br>\nComme sur le schéma de la page précédente, la structure de la mémoire ressemble à une bande avec un début et une fin. Mais on va ajouter un détail à cette représentation : <span class=\"bold\"><span class=\"color-red\">elle a une largeur de 16 bits !</span></span>', NULL, NULL, NULL, '', '', '', 3, 4, 10),
(118, '', '', '', 'Si on regarde attentivement le schéma <span class=\"italic\">(que j\'ai emprunté à Laurent Piechocki)</span>, la mémoire peut être représentée comme un puits dans lequel on jette des données : bits, octets, mots ou long mots.<br>\n<br>\n<div class=\"border-red\"><p>Attention :<br>\nLa largeur de ce puits est d\'un <span class=\"bold\">MOT</span> (soit 16 bits).<br>\nLa profondeur dépend de la taille de la mémoire.<br>\nLe but du jeu : Jeter nos données dans le puits <span class=\"bold\">sans déformer les données</span>.</p></div><br>\n<br>\nSi tu y jettes un MOT (comme dans le schéma) : <span class=\"bold\">%1010010110001000</span>, c\'est-à-dire 2 octets <span class=\"italic\">(1 de poids fort à droite et 1 de poids faible à gauche)</span> à une adresse paire :<br>\n<br>\nLe <span class=\"bold\">MOT</span> a été posé à <span class=\"bold\">une adresse paire</span> <span class=\"italic\">($3F8002)</span>.<br>\nL\'octet de <span class=\"bold\">poids fort</span> est à l\'adresse <span class=\"bold\">paire</span> <span class=\"italic\">($3F8002)</span>.<br>\nL\'octet de <span class=\"bold\">poids faible</span> est à l\'adresse <span class=\"bold\">impaire</span> <span class=\"italic\">($3F8003)</span>.', '', NULL, NULL, '1722249202268.png', NULL, '', '', '', 3, 1, 10),
(119, '', '', '', '<div class=\"border-red\"><p>A<span class=\"bold\">ttention :</span><br>\nSi vous jetez ce mot à une adresse impaire :<br>\nL\'octet de poids fort se trouve à une adresse impaire ($3F8001).<br>\nL\'octet de poids faible se trouve à une adresse paire ($3F8002).</p></div><br>\n<br>\nDans ce cas, vous ne respectez plus les règles du « jeu » <span class=\"italic\">(qui sont en fait celles du processeur 68000)</span>. Pour placer des mots <span class=\"italic\">(ou long mots)</span> dans la mémoire, <span class=\"bold\"><span class=\"color-red\">il faut veiller à ce que l\'adresse de destination soit paire !</span></span><br>\n<br>\n<div class=\"border-yellow\"><p><span class=\"bold\">Remarque :</span><br>\nPour un octet seul, la parité n\'a plus d\'importance.</p></div>', '', '', NULL, '1722250577845.png', NULL, '', '', '', 3, 1, 10),
(120, '', '', '', '', '', '<div class=\"border-green\"><p>A retenir : <br>\nDans une <span class=\"underline\"><span class=\"bold\">registre d\'adresse</span></span> : on ne peut transférer que des <span class=\"bold\">Word</span> ou <span class=\"bold\">Long Word</span>. <span class=\"bold\"><span class=\"underline\">PAS D\'OCTET</span></span>, c\'est très important !</p></div>', NULL, NULL, NULL, '', '', '', 1, 4, 11),
(121, '', '', '', '', '', '<div class=\"border-red\"><p>Attention :<br>\nLes directives <span class=\"bold\">REPT <span class=\"italic\"><nombre></span></span> et <span class=\"bold\">ENDR</span> dupliquent la portion de code dans la mémoire autant de fois que demandé. Cela ne réduit pas la place utilisée en mémoire, mais permet plutôt de gagner de la place dans ton code source.</p></div>', NULL, NULL, NULL, '', '', '', 2, 4, 11),
(122, 'Le registre de la pile', '', '', 'Quand on parle de pile en informatique, il ne s\'agit pas d\'une pile de piles de 9V ni de celles que l\'on trouve sur les cartes mères des PC. Il s\'agit plutôt d\'une pile comme une pile d\'assiettes ou d\'objets, <span class=\"underline\">l\'idée étant de visualiser des éléments empilés les uns sur les autres.</span><br>\n<br>\nUne pile est un registre d\'adresse, sur notre 68000 appelé registre <span class=\"bold\">A7</span>. Ce registre contient une valeur qui représente une adresse précise en mémoire. C\'est à cette adresse que des valeurs sont stockées.<br>\n<br>\nLa pile se trouve en mémoire juste avant le framebuffer. Vous pouvez vérifier cela de deux manières :<br>\n<br>\n<span class=\"underline\">Avec le débogueur de DevPac.</span><br>\nEn regardant la valeur du registre A7. Par exemple, avec 4 Mo de RAM, chez moi, la valeur est <span class=\"bold\">$3F7FF8</span>.<br>\n<br>\n<span class=\"underline\">Avec l\'outil <span class=\"bold\">The Ripper</span></span> comme l\'image le montre <span class=\"italic\">(outil disponible au téléchargement dans le site dans l\'unité de disk E)</span>', '', '', NULL, '1722256001246.png', NULL, '', '', '', 3, 1, 11),
(123, '', '', '', '', 'Maintenant, nous allons envoyer des données dans la pile <span class=\"italic\">(donc le registre a0)</span>. C\'est similaire à l\'utilisation des autres registres :<br>\n<span class=\"code\">; Envoyer des données dans la pile<br>\n          move.l #$1234ABCD, (a7)<br>\n          move.l #$5687ABEF, (a7)</span><br>\n<br>\nTu connais la procédure : assemble ton code et observe dans le débogueur. En suivant l\'exécution de ton code, tu pourras voir où se trouvent les données que tu as envoyées.', '', '1722256582383.png', NULL, NULL, '', '', '', 3, 6, 11),
(124, '', '', '', '', '', 'Alors, ce que nous avons fait précédemment n’était pas très utile car nous avons écrasé les valeurs précédentes. Profitons de cette occasion pour apprendre un nouveau mode d’adressage : <span class=\"bold\">l’incrémentation et la décrémentation</span>.<br>\n<span class=\"bold\">Incrémenter</span> signifie <span class=\"underline\">augmenter une valeur de 1</span>, tandis que <span class=\"bold\">décrémenter</span> signifie la <span class=\"underline\">diminuer de 1</span>. En programmation, on distingue aussi entre :<br>\n<span class=\"bold\"><span class=\"underline\">Post-incrémentation / Post-décrémentation :</span></span> L\'opération se fait après l\'utilisation de la valeur.<br>\n<span class=\"bold\"><span class=\"underline\">Pré-incrémentation / Pré-décrémentation :</span></span> L\'opération se fait avant l\'utilisation de la valeur.<br>\nExemple simple, tu te souviens de ce code, quelques pages en arrière ?<br>\n<span class=\"code\">; Faire une addition sur l\'adresse écran<br>\n          move.l #$FFFFFFFF, d0   ; On charge une donnée dans d0<br>\n          move.l #$3F8000, a0     ; On charge une adresse dans a0<br>\n          move.l d0, (a0)         ; On stocke ce que contient d0 à l\'adresse contenue dans a0<br>\n          add.l #4, a0            ; On additionne 4 à l\'adresse contenue dans a0</span><br>\nLe but était d’obtenir une valeur dans <span class=\"bold\">a0</span> qui augmente de 4 en 4. Mais le processeur 68000 permet ce mode d’adressage :<br>\n<span class=\"code\">move.l d0, (a0)+        ; On stocke ce que contient d0 à l\'adresse contenue dans a0, <span class=\"bold\"><span class=\"color-green\">puis on incrémente a0 d\'un Long Word</span></span></span><br>\nIci, le symbole + est placé après les parenthèses. Cela signifie que l\'incrémentation de 4 octets <span class=\"italic\">(la taille d\'un Long Word)</span> se fait après l\'opération de stockage. C’est ce qu’on appelle post-incrémentation.<br>\n<br>\nTiens, teste ce petit programme. J\'ai pris soin de le commenter. Regarde ensuite dans <span class=\"bold\">Monst</span> <span class=\"italic\">(dernière fois que je le rappelle, c\'est le débogueur de DevPac)</span>  en alternant avec <span class=\"keyboard-key\">Ctrl</span> + <span class=\"keyboard-key\">V</span> à chaque ligne d\'instruction<br>\n<span class=\"code\">; incrémentation / décrémentation<br>\n          move.l #$FFFFFFFF, d0     ; valeur no1<br>\n          move.l #$12345678, d1     ; valeur no2<br>\n          move.l #$3F8000, a0       ; adresse framebuffer<br>\n<br>\n; On envoie le contenu de d0 à l\'adresse contenue dans a0, puis on incrémente a0<br>\n          REPT 4<br>\n          move.l d0, (a0)+<br>\n          ENDR<br>\n; Arrivé ici, a0 = $3F8010<br>\n<br>\n; On décrémente d\'abord le contenu de a0, puis on envoie ce que contient d1 à l\'adresse décrémentée de a0<br>\n          REPT 4<br>\n          move.l d1, -(a0)<br>\n          ENDR<br>\n; Arrivé ici, a0 = $3F8000</span><br>\n', NULL, NULL, NULL, '', '', '', 3, 4, 11),
(125, '', '', '', 'Maintenant que tu as compris ce principe, il est temps de l\'appliquer à la pile ! Ah tiens, je ne t\'ai pas dit, mais la pile en anglais, c\'est <span class=\"bold\">\"Stack Pointer\"</span>, et dans ton code, tu peux écrire <span class=\"bold\">sp</span> à la place de <span class=\"bold\">a7</span>, c\'est exactement la même chose. <span class=\"bold\">Désormais, nous utiliserons sp car c\'est plus explicite.</span><br>\n<br>\nMais pourquoi est-il important d\'utiliser la décrémentation spécifiquement pour la pile ? La première raison est que le système l\'utilise déjà de cette façon, mais nous verrons cela plus tard. L\'autre raison, qui relève du bon sens : la pile étant située juste avant l\'écran dans la mémoire, elle finira tôt ou tard par déborder dans les adresses de l\'écran ! Donc, nous stockons dans la pile \"à l\'envers\".<br>\n<br>\nTeste ce bout de code et regarde attentivement les valeurs que tu envoies dans la pile ainsi que l\'adresse du registre <span class=\"bold\">a7</span> (donc sp). Le schéma de droite représente visuellement ce que tu devrais voir.<br>\n<br>\n<span class=\"code\">          move.l #$3F8000,a0     ; on choisis une donnée, le frame buffer par exemple<br>\n<br>\n; on empile nos assiettes<br>\n          REPT 8<br>\n          move.l a0,-(sp)<br>\n          add.l #4,a0<br>\n          ENDR<br>\n<br>\n; on dépile nos assiettes<br>\n          REPT 8<br>\n          move.l (sp)+,d0<br>\n          ENDR</span><br>\n', '', '', NULL, '1722263833583.png', NULL, '', '', '', 3, 1, 11),
(126, '', '', '', '', '', 'Il existe encore plein d\'autre façon de faire pour manipuler des adresses et des données. Je te t\'invite à consulter la section <span class=\"bold\">Documentations</span> sur site où tu y trouvera <span class=\"bold\"><span class=\"italic\">\"Les modes d\'adressage du 68000\"</span></span>.<br>\nMais t\'inquiète pas on en verra d\'autre dans les cours qui vont suivre.', NULL, NULL, NULL, '', '', '', 3, 4, 11),
(127, '', '', 'Les différents modes d\'adressage', '', '', 'Chaque mode d\'adressage permet d\'accéder aux données de manière différente, ce qui offre une grande flexibilité dans la programmation sur le processeur Motorola 68000. Ces modes sont utilisés pour manipuler les registres de données, les registres d\'adresse, et différentes formes de mémoire immédiate ou indirecte.', NULL, NULL, NULL, '', '', '', 1, 4, 12),
(128, '', '', '', '', '', '<span class=\"bold\"><span class=\"underline\">Registre de données direct :</span></span><br>\n<span class=\"italic\">Exemple : </span><br>\n<span class=\"code\">MOVE D0, D1</span><br>\n<br>\n<span class=\"bold\"><span class=\"underline\">Registre d\'adresse direct :</span></span><br>\nL\'opérande source est un registre de données/d\'adresse ou d\'état.<br>\n<span class=\"italic\">Exemple : </span><br>\n<span class=\"code\">MOVE A0, A1<br>\nSUB.W D0,D1<br>\nMOVE.L A0, D2<br>\nAND SR</span><br>\n<br>\n<span class=\"bold\"><span class=\"underline\">Registre d\'adresse indirect :</span></span><br>\nDans ce cas, l\'adresse n\'est pas donnée directement, c\'est un registre qui pointe dessus (donc le registre a comme valeur l\'adresse visée). L\'adresse de l\'opérande est positionnée dans le registre d\'adresse. Pour indiquer que c\'est l\'adresse pointée par le registre, il faudra utiliser les parenthèses: <span class=\"bold\">MOVE.W (A0), D0</span> qui signifie que <span class=\"bold\">A0</span> pointe sur une adresse, la donnée en word présente à cette adresse sera recopiée dans le registre de données <span class=\"bold\">D0</span>.<br>\n<span class=\"italic\">Exemple : </span><br>\n<span class=\"code\">MOVE (A0), D1<br>\nMOVE D1,(A0)</span><br>\n<br>\n<span class=\"underline\"><span class=\"bold\">Registre d\'adresse indirect avec post-incrément :</span></span><br>\nMême chose que l\'adressage indirect simple, mais suite à cette opération, le contenu du registre d\'adresse sera incrémenté de 1 si le format est un Byte, de 2 si word, de 4 si long. <br>\n<span class=\"bold\">MOVE.W (A0)+, D0</span> signifie que <span class=\"bold\">A0</span> pointe sur une adresse, la donnée en word présente à cette adresse sera recopiée dans le registre de données <span class=\"bold\">D0</span>.<br>\nLe contenu du registre <span class=\"bold\">A0</span> est alors incrémenté de 2 <span class=\"italic\">(car .W)</span>, donc <span class=\"bold\">A0</span> pointe maintenant vers adresse + 2.<br>\n<span class=\"italic\">Exemple : </span><br>\n<span class=\"code\">MOVE (A0)+, D1<br>\nMOVE D1,(A0)+<br>\nMOVE.B (A2)+,(A2)<br>\nMOVE.B (A2)+,(A2)+</span><br>\n<br>\n<span class=\"underline\"><span class=\"bold\">Registre d\'adresse indirect avec pré-décrément :</span></span><br>\nMême chose que l\'adressage indirect simple, mais avant de faire cette opération, le contenu du registre d\'adresse sera décrémenté de 1 si le format est un Byte, de 2 si word, de 4 si long.<br>\n<span class=\"bold\">MOVE.W D0,-(A0)</span> signifie que <span class=\"bold\">A0</span> pointe sur une adresse. <span class=\"bold\">A0</span> est alors décrémenté de 2 <span class=\"italic\">(car .W)</span>, puis cette nouvelle adresse ainsi calculée recevra la valeur du registre de données <span class=\"bold\">D0</span>.<br>\n<span class=\"italic\">Exemple : </span><br>\n<span class=\"code\">MOVE -(A0), D1<br>\nMOVE D1,-(A0)<br>\nMOVE.L -(A2),-(A2)<br>\nMOVE.B #23,-(A2)</span><br>\n<br>\n<span class=\"underline\"><span class=\"bold\">Registre d\'adresse indirect avec déplacement :</span></span><br>\nMême chose que l\'adressage indirect simple, mais cette fois-ci, <span class=\"bold\">A0</span> pointe vers une adresse + déplacement <span class=\"italic\">(codé sur 16 bits et étendu sur 32)</span> précisé.<br>\n<span class=\"bold\">MOVE.B 16(A0), D0</span> signifie que <span class=\"bold\">A0</span> pointe sur une adresse, la donnée en word présente à adresse + déplacement sera recopiée dans le registre de données <span class=\"bold\">D0</span>.<br>\n<div class=\"border-red\"><p>La valeur du déplacement ne va pas modifier la valeur de <span class=\"bold\">A0</span> !</p></div><br>\n<span class=\"underline\">Autrement dit :</span> <span class=\"bold\">Instruction          <span class=\"color-red\">d</span>(<span class=\"color-blue\">An</span>),<span class=\"color-green\">destination</span></span><br>\nOn ajoute au contenu du registre d\'adresse <span class=\"color-blue\"><span class=\"bold\">An</span></span>, la valeur (signée) du déplacement <span class=\"color-red\"><span class=\"bold\">d</span></span>. La donnée pointée par cette nouvelle valeur du registre <span class=\"color-blue\"><span class=\"bold\">An</span></span> est posée dans / à <span class=\"color-green\"><span class=\"bold\">l\'opérande destination</span></span>.<br>\nDonc <span class=\"bold\"><span class=\"color-red\">d</span>(<span class=\"color-blue\">An</span>) = <span class=\"color-red\">d</span>+(<span class=\"color-blue\">An</span>)</span><br>\n<span class=\"italic\">Exemple : </span><br>\n<span class=\"code\">MOVE 16(A0), D1<br>\nMOVE.W #458,2(A3)<br>\n</span><br>\n<br>\n<span class=\"bold\"><span class=\"underline\">Registre d\'adresse indirect avec index et déplacement de 8 bits :</span></span><br>\nMême chose que l\'adressage indirect avec déplacement, mais s\'ajoute à cela un registre de données qui servira d\'index de déplacement à partir de l\'adresse visée...<br>\n<div class=\"border-red\"><p>La valeur du registre de données servant d\'index et le déplacement ne va pas modifier la valeur de <span class=\"bold\">A0</span> !</p></div><br>\n<span class=\"underline\">Autrement dit :</span> <span class=\"bold\">instruction          <span class=\"color-red\">d</span>(<span class=\"color-blue\">An</span>,<span class=\"color-orange\">Rn</span>),<span class=\"color-green\">destination</span>)</span><br>\nOn ajoute au registre <span class=\"color-blue\"><span class=\"bold\">An</span></span>, la valeur signée du déplacement <span class=\"color-red\"><span class=\"bold\">d</span></span> contenu sur un MOT et la valeur du registre <span class=\"color-orange\"><span class=\"bold\">Rn</span></span> (d\'adresse ou de donnée), puis on déplace la donnée ainsi pointée dans / à<span class=\"color-green\"> <span class=\"bold\">l\'opérande destination</span></span>.<br>\n<span class=\"italic\">Exemple : </span><br>\n<span class=\"code\">MOVE 8(A0, D0.L), D1<br>\nMOVE.W $10(A0,D1.L), D0</span><br>\n<br>\n<span class=\"underline\"><span class=\"bold\">Adressage absolu court :</span></span><br>\nIl s\'agit d\'adresse d\'une largeur de 16 bits (un mot). <span class=\"bold\"><span class=\"color-red\">L\'adresse sera automatiquement convertie en 32 bits (long)</span></span> de la manière suivante : Si le nombre est signé <span class=\"italic\">(bit de poid fort positionné)</span>, alors l\'adresse sera complétée par <span class=\"bold\">$FFFF</span>, sinon complétée par <span class=\"bold\">$0000</span>, par exemple <span class=\"bold\">$FF00</span> deviendra <span class=\"bold\">$FFFFFF00</span>.<br>\n<div class=\"border-red\"><p>Dans ce cas, vous ne pouvez accéder qu\'à 64Ko de la mémoire.</p></div><br>\n<span class=\"italic\">Exemple : </span><br>\n<span class=\"code\">MOVE $1234.W, D1</span><br>\n<br>\n<span class=\"underline\"><span class=\"bold\">Adressage absolu long :</span></span><br>\n<span class=\"italic\">Exemple :</span><br>\n<span class=\"code\">MOVE $12345678.L, D1</span><br>\n<br>\n<span class=\"underline\"><span class=\"bold\">Compteur de programme indirect avec déplacement (adressage relatif):</span></span><br>\nL\'adresse effective est fonction d\'un déplacement (toujours sur 16 bits) et du compteur d\'instructions PC. Ajout du déplacement au PC (pour les branchements, le déplacement pourra être sur 8 bits)<br>\n<div class=\"border-yellow\"><p>Le code sera relogeable dans ce cas.</p></div><br>\n<span class=\"underline\">Autrement dit :</span> <span class=\"bold\"><span class=\"color-red\">d</span>(<span class=\"color-blue\">PC</span>),<span class=\"color-green\">destination</span></span><br>\nOn ajoute la valeur du déplacement signé <span class=\"color-red\"><span class=\"bold\">d</span></span> code sur un MOT au <span class=\"color-blue\"><span class=\"bold\">PC</span></span> (de l\'instruction considérée !), on prends la donnée ainsi pointée et on la pose dans  / à <span class=\"color-green\"><span class=\"bold\">l\'opérande de destination</span></span>.<br>\n<span class=\"italic\">Exemple : </span><br>\n<span class=\"code\">MOVE 16(PC), D1<br>\nMOVE.B $10(PC), D0<br>\nJMP 10(PC)</span><br>\n<br>\n<span class=\"underline\"><span class=\"bold\">Compteur de programme indirect avec index et déplacement de 8 bits (adressage indexé):</span></span><br>\nIdentique à Adressage relatif auquel s\'ajoute un registre de données servant d\'index.<br>\nAutrement dit : <span class=\"bold\">instruction         <span class=\"color-red\">d</span>(<span class=\"color-blue\">PC</span>,<span class=\"color-orange\">Rn</span>),<span class=\"color-green\">destination</span></span><br>\nOn ajoute la valeur du déplacement signé <span class=\"color-red\"><span class=\"bold\">d</span></span> codé sur un MOT et celle du registre <span class=\"color-orange\"><span class=\"bold\">Rn</span></span> au <span class=\"color-blue\"><span class=\"bold\">PC</span></span> (de l\'instruction considérée !), on prend la donnée ainsi pointée et on la pose dans  / à <span class=\"color-green\"><span class=\"bold\">l\'opérande destination</span></span>.<br>\n<span class=\"italic\">Exemple : </span><br>\n<span class=\"code\">MOVE 8(PC, D0.L), D1<br>\nMOVE.B $10(PC, D1.W), D0</span><br>\n<br>\n<span class=\"underline\"><span class=\"bold\">Immédiat Simple  :</span></span><br>\nL\'opérande représente dans ce cas une donnée et devra commencer par un # dans le premier argument de l\'instruction assembleur.<br>\n<div class=\"border-red\"><p>Lors d\'un transfert d\'une donnée sur une taille d\'un mot vers un registre d\'adresse, cette donnée sera convertie sur 32 bits, c\'est donc tout le registre sur un mot long qui sera affecté.</p></div><br>\n<span class=\"underline\">a) - De type numérique</span><br>\n<span class=\"italic\">Exemple : </span><br>\n<span class=\"code\">MOVE #$1234, D1<br>\nSUB.W #456, D0<br>\nADD.L #$F824AB45,D1</span><br>\n<span class=\"underline\">b) - De type symbolique</span><br>\nDans ce cas l\'opérande source est un <span class=\"bold\">LABEL</span><br>\n<span class=\"italic\">Exemple : </span><br>\n<span class=\"code\">MOVE.L #label, A0</span><br>\n<br>\n<span class=\"underline\"><span class=\"bold\">Immédiat Rapide :</span></span><br>\nDans cette variante, la donnée est codée directement dans l\'instruction sur 3 bits. Elle ne pourra donc être comprise qu\'entre 0 et 7. sauf pour l\'instruction move ou la donnée pourra être codée sur 8 bits. L\'instruction devra être suivie de Q pour quick. Evidemment, le nombre de cycles dans ce cas sera plus petit que précédemment, car il y aura moins de choses à traiter !<br>\n<span class=\"italic\">Exemple : </span><br>\n<span class=\"code\">ADDQ.L #2,A0<br>\nMOVEQ #128,D0</span><br>\n<br>\nSources volées au site <a class=\"link\" href=\"http://supertos.free.fr/\" target=\"blank\">http://supertos.free.fr/</a>', NULL, NULL, NULL, '', '', '', 1, 4, 12),
(132, 'IV. Installation de l’émulateur Steem', '', '', '<span class=\"underline\">1 – Problème avec DirectX au démarrage ?</span><br>\n<br>\nLa première fois que tu vas lancer <span class=\"bold\">Steem</span>, tu auras probablement une succession de fenêtres popup. Si tu es sous <span class=\"bold\">Windows 7</span>, <span class=\"bold\"><span class=\"color-red\">il n\'est plus supporté par Microsoft</span></span>, donc tu n\'auras plus aucune mise à jour, et les fichiers et configurations habituels seront au fil des années de plus en plus difficiles à obtenir. Alors Windows 10 minimum, mais bon c\'est windows et donc tu auras peut être des problèmes, tu vois la fenêtre à droite ? Cela signifie qu\'il te manque un fichier lié à <span class=\"bold\">DirectX</span>, et il est désormais impossible de le réinstaller depuis le site de Microsoft. C\'est simple, <a class=\"link\" href=\"https://www.microsoft.com/fr-fr/download/details.aspx?id=35\" target=\"blanck\">met à jour direct X sur le site officiel de microsoft</a>. Si tu veux rester sous Windows 7 je te fournis un lien qui va te permettre d\'installer DirectX, <a class=\"link\" href=\"https://www.asmtariste.fr/assets/files/directx-Jun2010_redist.zip\" target=\"blank\">une version officielle de juin 2010</a>. ', '', '', NULL, '1722504037409.png', NULL, '', '', '', 4, 1, 4),
(133, '', '', '', '<span class=\"underline\">2 - Préparation à faire <span class=\"bold\">AVANT</span> l\'ouverture de Steem</span><br>\n<br>\nBon, je vais être clair dès le début : je déteste cet émulateur, mais comme certains l\'aiment bien, je suis obligé de guider les noobs, afin de préserver le peu de cheveux qu\'il leur reste, s\'il en reste !<br>\n<br>\nDans le dossier racine de l\'émulateur, tu vas créer 3 dossiers :<br>\n<br>\n<span class=\"italic\"><span class=\"bold\">/tos<br>\n/harddrive<br>\n/st</span></span><br>\n<br>\n<span class=\"underline\">a) - Dans le dossier tos :</span><br>\nTu vas aller chercher dans <span class=\"underline\">l\'unité de disque A</span> du site (System), le tos que tu veux utiliser. Si tu n\'arrives pas à choisir, décompresses tous les fichiers  dans le dossier : tos<br>\n<br>\n<span class=\"underline\">b) - Dans le dossier harddrive :</span><br>\nTu vas simplement créer 3 autres dossiers appelés D, E et F. Ils vont représenter des unités de disques durs et tu pourras stocker plein de choses à l\'intérieur et y avoir accès à la fois depuis l\'environnement du GEM et depuis ton Windows / Linux / MacOS.<br>\n<br>\n<span class=\"underline\">c) - Dans le dossier st :</span><br>\nTu y mettras toutes tes images disques st, stx, etc.', '', '', NULL, '1722504710869.png', NULL, '', '', '', 4, 1, 4),
(134, '', '', '', '<span class=\"underline\">3 - Un popup inutile</span><br>\n<br>\nEnsuite, un popup avec un long texte te demande si tu veux <span class=\"bold\">un raccourci dans ton menu démarrer</span>... il n\'y avait pas besoin de mettre une fenêtre pour si peu... Bref, tu fais <span class=\"bold\">Oui</span> ou <span class=\"bold\">Non</span>, on s\'en fout un peu.', '', '', NULL, '1722505232071.png', NULL, '', '', '', 4, 1, 4),
(135, '', '', '', '<span class=\"underline\">4 – Le choix du TOS</span><br>\n<br>\nEt bam, encore une fenêtre popup avec cette fois un gros pavé de texte à lire, tout ça pour choisir dans la fenêtre suivante ton TOS... Rappelle-toi, je t\'ai fait créer un dossier<span class=\"bold\"> /tos</span>. Prends <span class=\"bold\">EmuTos</span>, par exemple, qui est une version améliorée du TOS original.', '', '', NULL, '1722505556237.png', NULL, '', '', '', 4, 1, 4),
(136, '', '', '', '<span class=\"underline\">5 - Choix du répertoire d\'images de disquettes</span><br>\n<br>\nBordel, encore une popup avec un pavé encore plus gros que le précédent ! Oui, je m\'emporte parce que franchement, ça me gonfle, ça n\'aide en rien et c\'est chiant à lire. Bref, choisis le dossier<span class=\"bold\"> /st</span> que je t\'ai fait créer tout à l\'heure, <span class=\"underline\">c\'est ton dossier de disquettes</span>... au moins, ça sera rangé !', '', '', NULL, '1722505901353.png', NULL, '', '', '', 4, 1, 4),
(137, '', '', '', '<span class=\"underline\">6 - Installation des unités de disque dur</span><br>\n<br>\nIl s\'agit de disques durs <span class=\"bold\">GEMDOS</span> et non <span class=\"bold\">ASCI</span>. Utilise le répertoire <span class=\"bold\">/harddrive</span> que je t\'ai fait créer tout à l\'heure.', '', '', NULL, '1722506478204.png', NULL, '', '', '', 4, 1, 4),
(138, '', '', '', '<span class=\"underline\">7 - Une autre popup...</span><br>\n<br>\nFranchement, c\'est déjà un émulateur anti-ergonomique, mais alors le parcours UX pour son installation est une vraie calamité. Une popup pour te dire comment démarrer l\'émulateur... D\'autant plus qu\'une documentation existe alors pourquoi garder ces fenêtres et nous pourrir les yeux... Bref, c\'est enfin terminé... enfin, là ce n\'était que l\'installation, on n\'a rien configuré du tout !', '', '', NULL, '1722506796895.png', NULL, '', '', '', 4, 1, 4),
(139, 'V - Configuration de Steem', '', NULL, 'Bon, ensuite on passe à sa configuration et on va commencer par parler des problèmes que tu peux rencontrer. Pour commencer, si tu as décidé d\'utiliser <span class=\"bold\">EmuTos</span>, il se peut que tu aies ce bel écran d\'erreur... Je ne sais absolument pas pourquoi, sachant qu\'il s\'agit de la <a class=\"link\" href=\"https://emutos.sourceforge.io/\" target=\"blank\">rom TOS officielle de EmuTOS</a> <span class=\"italic\">(qui, soit dit en passant, est strictement la même que celle que j\'ai mise dans mon vrai 1040STE...)</span>. Bref, si certains peuvent me donner une explication, je suis preneur :)<br>\n<br>\n<span class=\"underline\"><span class=\"bold\">Utilise une ROM TOS 1.62.</span></span>', '', '', NULL, '1722509150494.png', NULL, '', '', '', 5, 1, 4),
(140, '', '', '', '', '', 'Bref, de toute façon, on s\'en fout, il va falloir déjà configurer \"globalement\" Steem. Déjà, retiens les raccourcis suivants :<br>\n<br>\n<span class=\"keyboard-key\">F12</span> : c\'est un toggle pour mettre l\'émulateur en mode <span class=\"bold\"><span class=\"color-orange\">start</span></span> ou <span class=\"bold\"><span class=\"color-red\">stop</span></span> <span class=\"italic\">(d\'ailleurs, le petit icône de la flèche jaune en haut à gauche de la fenêtre s\'active et se désactive à la pression de cette touche).</span><br>\n<span class=\"keyboard-key\">F11</span> : ça permet de <span class=\"bold\">relâcher</span> ou <span class=\"bold\">récupérer</span> ta souris, laissant celle de l\'Atari figée dans l\'émulateur.<br>\nCeci étant dit, maintenant je vais te donner toute une série de captures d\'écran pour que tu y mettes les mêmes réglages que moi pour commencer.<br>\nClique sur la petite roue dentée \"settings\" en haut a droite', NULL, NULL, NULL, '', '', '', 5, 4, 4),
(141, 'Machine Virtuelle ou pas ?', '', '', '<div class=\"border-red\"><p>Attention :<br>\nSi tu utilises une machine virtuelle pour faire tourner <span class=\"bold\">Steem</span> sous <span class=\"bold\">Windows 10</span>, comme c\'est mon cas, une option est nécessaire ; sinon, ta souris sera impossible à contrôler.</p></div><br>\n<br>\nDonc, regarde bien l\'écran à droite : c\'est l\'option <span class=\"bold\"><span class=\"color-green\">VM-friendly</span></span> qu\'il faut cocher.', '', '', NULL, '1722510009142.png', NULL, '', '', '', 5, 1, 4),
(142, '', '', '', '', '', '', '1722510151701.png', '1722510151729.png', NULL, '', '', '', 5, 2, 4),
(143, '', '', '', '', '', '', NULL, NULL, '1722510329649.png', '', '', '', 5, 5, 4),
(144, 'Ajout des disques durs', '', '', 'Ensuite, clique sur l\'icône <span class=\"bold\">Disk Manager</span>, qui permet de gérer les unités de disque dur. Ensuite, clique sur le gros icône <span class=\"bold\">GEMDOS</span> pour cocher la case <span class=\"bold\"><span class=\"color-green\">\"Enable GEMDOS Hard Drives\"</span></span>.<br>\n<br>\nJe t\'ai fait ajouter 4 dossiers tout à l\'heure : <span class=\"bold\">C, D, E, F</span>. Tu dois pointer sur chacun d\'eux avec le bouton <span class=\"bold\"><span class=\"color-green\">Browse</span></span>, et pour ajouter le suivant, utilise le bouton <span class=\"bold\"><span class=\"color-green\">Add</span></span>. Clique sur <span class=\"bold\"><span class=\"color-green\">OK</span></span>.', '', '', NULL, '1722510938312.png', NULL, '', '', '', 5, 1, 4),
(145, '', '', '', '', 'C\'est presque terminé !<br>\n<br>\nRedémarre l\'Atari, sélectionne le <span class=\"bold\">disque C</span>, puis va dans le menu <span class=\"bold\">Options</span> du GEM et choisis <span class=\"bold\">\"Installer une unité disque\"</span>. Sélectionne la lettre qui correspond aux unités installées lors de l\'étape précédente.<br>\n<br>\nEt voilà, tu es prêt à utiliser cet émulateur !', '', '1722511811397.png', NULL, NULL, '', '', '', 5, 6, 4),
(146, 'Un outils graphique : Deluxe Paint', '', '', 'Mis à part la partie \"Capture\" qui sera réalisée par l\'émulateur, il est intéressant de connaître un peu les outils de l\'époque, comme ce logiciel de retouche : <span class=\"bold\">Deluxe Paint</span>.<br>\n<br>\nIl tient sur trois disquettes, mais <span class=\"bold\">seule la disquette n°1 contient le programme d\'exécution</span>. Tu vas le trouver dans l<span class=\"bold\">\'unité disque B (Graphisme)</span> du site. Décompresse le tout, puis pour chaque disquette, copie-colle <span class=\"italic\">(ou plutôt glisse-dépose, comme dans la capture d\'écran à droite)</span> les fichiers dans trois dossiers différents sur l\'un de tes disques durs.<br>\n<br>\n<span class=\"bold\">Deluxe Paint</span> servira à convertir les captures dans les formats que l\'on souhaite. Justement, comme il s\'agit de cela, je vais t\'expliquer les différences entre les images <span class=\"bold\">NEO</span>, <span class=\"bold\">PI1</span> et <span class=\"bold\">PC1</span>.', '', '', NULL, '1722513695738.png', NULL, '', '', '', 1, 1, 13),
(147, '', '', 'Un outil de capture d\'écran : Hatari ou Steem', '', '', 'Tu peux évidemment utiliser <span class=\"bold\">Steem</span> si ça te plaît, le principe est le même, seules les options de l\'émulateur sont différentes. Que ce soit l\'un ou l\'autre, ils ont l\'avantage d\'offrir des captures au format <span class=\"bold\">.PNG</span>, certes, mais surtout au format <span class=\"bold\">.NEO</span>, un format directement lisible par <span class=\"bold\">Deluxe Paint</span>.<br>\n<br>\nAvant toute chose, configure <span class=\"bold\">Hatari</span> pour <span class=\"underline\">ne pas inclure la barre de status</span> que l\'on a habituellement en bas de l\'écran, <span class=\"underline\">ni les bordures</span> en trop, étant donné que l\'on ne veut capturer que <span class=\"bold\">l\'écran de 32 Ko.</span><br>\n<br>\nD\'ailleurs hormis le fait de décocher l\'option <span class=\"bold\"><span class=\"color-green\">\"Show borders\"</span></span>, qui est facile à comprendre, OK mais il ne faut pas oublier d\'enlever le disque ASCI et l\'option <span class=\"bold\"><span class=\"color-green\">\"Boot from hard disk\"</span></span> pour pouvoir booter sur une disquette si celle ci est bootable.', NULL, NULL, NULL, '', '', '', 1, 4, 13),
(148, '', '', '', '', '', '', '1722515160022.png', '1722515160024.png', NULL, '', '', '', 1, 2, 13),
(149, '', '', '', '', 'Pour faire une capture d\'écran, va dans les options de <span class=\"bold\">Hatari</span> avec <span class=\"keyboard-key\">F12</span> -> <span class=\"color-green\">Hatari Screen</span> et tu tomberas sur ce panneau. Par précaution, enlève <span class=\"bold\">\"Indicators\"</span> en mettant : <span class=\"bold\">none</span> <span class=\"italic\">(c\'est la barre du bas)</span>.<br>\n<br>\nSinon, c\'est simple : tu choisis le format <span class=\"bold\">NEO</span> <span class=\"italic\">(c\'est celui qui nous intéresse)</span> et tu cliques sur <span class=\"color-green\"><span class=\"bold\">Screenshot</span></span>, et c\'est tout !', '', '1722516142962.png', NULL, NULL, '', '', '', 1, 6, 13),
(150, '', '', '', 'Alors, si tu es sous <span class=\"bold\">Windows</span>, c\'est simple : <span class=\"bold\">Hatari</span> stocke ses fichiers à sa racine. Les écrans capturés auront un nom de fichier <span class=\"bold\">grap0001.neo</span>, <span class=\"bold\">grab0002.neo</span>, etc. Si tu es sous <span class=\"bold\">Linux</span>, par défaut, <span class=\"bold\">Hatari</span> les stocke dans <span class=\"bold\">\"Dossier personnel\"</span>.<br>\n<br>\nFais ça proprement : Renomme tes fichiers avec un nom de <span class=\"bold\"><span class=\"underline\">maximum 8 caractères</span></span> et déplace-les dans un de tes disques durs GEMDOS <span class=\"italic\">(comme ça, tu pourras y accéder depuis ton Atari).</span>', '', '', NULL, '1722516545409.png', NULL, '', '', '', 1, 1, 13),
(151, '', '', 'Conversion au format PI1 & PC1', '', '', 'On y est ! Tu as sur ton disque dur un fichier <span class=\"bold\">.NEO</span> qui contient ton image capturée ! On va procéder à la conversion de celui-ci aux formats <span class=\"bold\">.PI1</span> et <span class=\"bold\">.PC1</span>. Alors oui, je n\'ai pas encore expliqué ce que sont tous ces formats, mais on va y venir juste après et voir ce qu\'on y trouve.<br>\n<br>\nAllez hop, démarre <span class=\"bold\">Deluxe Paint</span> <span class=\"italic\">(rappelle-toi, tu as copié le contenu des 3 disquettes sur un de tes disques durs)</span> et trouve le fichier <span class=\"bold\">DPAINT.TOS</span>.<br>\n<br>\n<div class=\"border-yellow\"><p><br>\nRappel :<br>\nPense à remettre ton disque dur ASCI et à configurer le boot ainsi que les bordures de ton émulateur.</p></div>', NULL, NULL, NULL, '', '', '', 2, 4, 13);
INSERT INTO `contents` (`id_contents`, `title_left`, `title_right`, `title_center`, `text_left`, `text_right`, `text_center`, `image_left`, `image_right`, `image_center`, `attachement_left`, `attachement_right`, `attachement_center`, `page`, `id_templates`, `id_articles`) VALUES
(152, '', '', '', '', '', 'Tu arrives sur un écran noir, et sache que <span class=\"bold\">Deluxe Paint est en basse résolution</span>. Il existe d\'autres outils pour d\'autres résolutions graphiques, mais c\'est quand même plus sympa avec 16 couleurs !<br>\n<br>\nUne fois sur cet écran, tu as une barre d\'icônes. Tu auras compris qu\'il faut cliquer dessus.<br>\nAlors, clique <span class=\"italic\">(gauche ou droit, cela ne change rien dans ce cas, mais ce n\'est pas le cas pour toutes les icônes de la barre)</span> <span class=\"bold\"><span class=\"color-green\">sur l\'icône en forme de disquette</span></span>. Cela t\'ouvre une fenêtre différente.<br>\nEnsuite sur le bouton <span class=\"color-green\">Charger</span> -> <span class=\"color-green\">Unité</span> et là tu sélectionnes l\'unité dans laquelle se trouve ton fichier <span class=\"bold\">NEO</span>.', NULL, NULL, NULL, '', '', '', 2, 4, 13),
(153, '', '', '', '', '', '', '1722517869233.png', '1722517869239.png', NULL, '', '', '', 2, 2, 13),
(154, '', '', '', '', '', 'Ensuite, c\'est simple : tu sélectionnes ton fichier et tu cliques sur <span class=\"color-green\">OK</span>. À savoir, si tu te trouves dans un répertoire avec plusieurs fichiers de type image, <span class=\"bold\">Deluxe Paint</span> les filtre avec les boutons <span class=\"bold\">*.PI1</span>, *<span class=\"bold\">.PC1</span>, etc. Cependant, il ne filtre pas les autres fichiers qui ne sont pas des images.', NULL, NULL, NULL, '', '', '', 2, 4, 13),
(156, '', '', '', '', '', '', '1722518691009.png', '1722518691010.png', NULL, '', '', '', 2, 2, 13),
(157, 'Conversionnnnnnn !!!', '', '', 'Voilà, on y est arrivé ! Il ne te reste plus qu\'à sauvegarder l\'image actuelle dans les deux autres formats qui nous intéressent. Par le même menu par lequel on a chargé notre image, cette fois-ci, on va la sauvegarder.<br>\n<br>\nClique d\'abord sur le bouton <span class=\"bold\">PI1</span>, cela va automatiquement changer l\'extension du fichier. Tu arrives dans la fenêtre suivante où il ne te reste plus qu\'à choisir l\'endroit où tu souhaites sauvegarder ton fichier <span class=\"italic\">(pour les manipulations suivantes, mets ça à côté du fichier NEO)</span>. Tu cliques sur <span class=\"bold\">OK</span> et c\'est bon.<br>\n<br>\nMaintenant, reproduis les mêmes actions pour créer un fichier <span class=\"bold\">PC1</span>.', '', '', NULL, '1722519062129.png', NULL, '', '', '', 2, 1, 13),
(158, 'NEO (NéoChrome)', '', '', 'Le format d\'image <span class=\"bold\">NeoChrome</span> est spécifiquement associé au logiciel de dessin <span class=\"bold\">NeoChrome</span>, largement utilisé par les artistes et les développeurs de jeux de l\'époque. Si on examine en mémoire une image NEO <span class=\"italic\">(mais cela vaut aussi pour les autres formats)</span>, on trouve une en-tête avec des données qui ne sont pas les données de l\'image proprement dites, mais qui fournissent des renseignements sur sa résolution graphique et sa palette, par exemple <span class=\"italic\">(il y a d\'autres paramètres, mais cela ne nous intéresse pas pour le moment)</span>.<br>\n<br>\nUne image <span class=\"bold\">NEO</span> commence toujours par un mot égal à <span class=\"bold\">$0000</span> (4 octets à zéro). Ensuite, les renseignements sur la résolution sont codés sur un mot :<br>\n<span class=\"bold\"><span class=\"color-red\">$0000</span> pour la haute résolution<br>\n<span class=\"color-red\">$0001</span> pour la résolution moyenne<br>\n<span class=\"color-red\">$0002</span> pour la basse résolution</span><br>\n<br>\nComme on peut le voir sur la capture à droite <span class=\"italic\">(une image NEO que j\'ai chargée en mémoire)</span>, à l\'adresse <span class=\"bold\">$06A7EA</span>, les encres de la palette commencent avec les valeurs <span class=\"bold\">$0000, $0114, $0126</span>, etc., <span class=\"underline\">pour une longueur de 16 mots</span>.<br>\n<br>\nLes données suivantes correspondent à l\'animation des couleurs, la vitesse et la direction de l\'animation, les dimensions de l\'image, etc.', '', '', NULL, '1722521866109.png', NULL, '', '', '', 3, 1, 13),
(159, 'PI1, PI2 et PI3 (Degas Elite)', '', '', 'Le format d\'image <span class=\"bold\">PI</span>x est souvent associé au logiciel de dessin <span class=\"bold\">Degas Elite</span>. PI1, PI2 et PI3 correspondent au 3 principales résolutions graphique de l\'Atari.<br>\nSi on examine en mémoire une image PI1 <span class=\"italic\">(comme pour NEO)</span>, on trouve une en-tête avec des données similaires, mais pas strictement au même endroit. Elles fournissent toujours des renseignements sur la résolution graphique et la palette, etc. <span class=\"italic\">(il y a beaucoup moins de paramètres que pour une image NEO)</span>.<br>\n<br>\nUne image <span class=\"bold\">PI</span>x commence toujours par un mot pour la résolution avec le même principe :<br>\n<span class=\"bold\"><span class=\"color-red\">$0000</span></span> pour la haute résolution<br>\n<span class=\"bold\"><span class=\"color-red\">$0001</span></span> pour la résolution moyenne<br>\n<span class=\"bold\"><span class=\"color-red\">$0002</span></span> pour la basse résolution<br>\n<br>\nLa palette suit juste après la résolution. Comme on peut le voir sur la capture à droite <span class=\"italic\">(une image PI1 que j\'ai chargée en mémoire)</span>, à l\'adresse <span class=\"bold\">$072568</span>, les encres de la palette commencent avec les valeurs <span class=\"bold\">$0000, $0114, $0126</span>, etc., <span class=\"underline\">pour une longueur de 16 mots</span>.<br>\n<br>\nLes données suivantes correspondent directement à l\'image pour une longueur fixe de 16000 mots (soit 32000 octets = 32 Ko). Ensuite, les données pour les animations et autres sont placées à la fin du fichier sur 4 * 4 mots.', '', '', NULL, '1722522523310.png', NULL, '', '', '', 3, 1, 13),
(160, 'PC1, PC2 et PC3 (Degas Elite compressé)', '', '', 'Et pour terminer, le format d\'image <span class=\"bold\">PC</span>x est également signé par <span class=\"bold\">Degas Elite</span>, mais cette fois-ci, les données de l\'image sont compressées, ce qui permet de gagner de l\'espace en mémoire. PC1, PC2 et PC3 correspondent aux trois principales résolutions graphiques de l\'Atari.<br>\n<br>\nSi on examine en mémoire une image PC1 <span class=\"italic\">(comme pour NEO)</span>, on trouve une en-tête avec des données presque identiques. Elles fournissent toujours des renseignements sur la résolution graphique et la palette, etc., comme pour la version non compressée.<br>\n<br>\nUne image <span class=\"bold\">PC</span>x commence toujours par un mot pour la résolution avec le même principe, sauf qu\'on y trouve un $80 comme premier octet :<br>\n<span class=\"bold\"><span class=\"color-red\">$8000</span></span> pour la haute résolution<br>\n<span class=\"bold\"><span class=\"color-red\">$8001</span></span> pour la résolution moyenne<br>\n<span class=\"bold\"><span class=\"color-red\">$8002</span></span> pour la basse résolution<br>\n<br>\nLa palette suit juste après la résolution. Comme on peut le voir sur la capture à droite <span class=\"italic\">(une image PC1 que j\'ai chargée en mémoire)</span>, à l\'adresse <span class=\"bold\">$07A2AA</span>, les encres de la palette commencent avec les valeurs <span class=\"bold\">$0000, $0114, $0126</span>, etc., <span class=\"underline\">pour une longueur de 16 mots</span>.<br>\n<br>\nLes données suivantes correspondent directement à l\'image, mais sont compressées. Selon un article de ST Magazine, voici ce qui est dit sur la compression utilisée :', '', '', NULL, '1722522944864.png', NULL, '', '', '', 3, 1, 13),
(161, '', '', '', '', '', '\"<span class=\"italic\">La méthode de compression utilisée est celle des PackBits. Chaque ligne est compressée séparément, c\'est-à-dire que toutes les données d\'une ligne apparaissent avant celles de la ligne suivante. De même, à l\'intérieur de chaque ligne, chaque plan de couleur est compressé séparément.<br>\n<br>\n<div class=\"border-red\"><p>ATTENTION : Degas Elite utilise un buffer de 40 octets pour décompresser les données en cours de lecture. Ce buffer n\'est vidé que s\'il est plein. Toutes les commandes de décompression (voir l\'algorithme PackBits) doivent contenir moins de 40 octets, sous peine de déclencher un Bus Error lors de la lecture de l\'image par Degas Elite.</p></div></span>\"<br>\n<br>\n<a class=\"link\" href=\"https://download.abandonware.org/magazines/ST%20Magazine/stmagazine_numero051/st%20magazine%20-%20N051%20-%20avril%20mai%201991%20-%20page070%20et%20071.jpg\" target=\"blank\"><span class=\"italic\">ST Magazine n°51 - page 71</span></a>', NULL, NULL, NULL, '', '', '', 3, 4, 13),
(162, '', '', '', '', '', 'Comme c\'est ton premier programme en assembleur, il va falloir être organisé et structurer non seulement ton programme, mais aussi tes fichiers et dossiers. Il faut aussi que tu aies une vision plus précise de ce que l\'on range, pourquoi on doit organiser tout ça, et ce qui se passe si on ne le fait pas.<br>\nCe cours ne sera pas juste dédiée simplement à \"Ouais, ça marche, j\'affiche une image !\". Non. Nous mettrons de l\'ordre dans ton programme et dans les dossier dès le début ! <span class=\"italic\">(je te donnerai une méthode d\'organisation qui est la mienne, il y a plein de façons de faire, l\'important est de pouvoir se relire et de retrouver les choses facilement)</span>.', NULL, NULL, NULL, '', '', '', 1, 4, 14),
(163, 'Préparation du projet', '', '', 'Oui, on ne se lance pas directement sans un minimum de préparation, comme par exemple l\'image que tu souhaites afficher. Donc hop ! Ton premier travail consiste à <span class=\"bold\">capturer une image et à la convertir a<span class=\"underline\">u format PI1 (Degas Elite)</span></span>. Si tu ne sais pas comment faire, alors arrête-toi ici et va d\'abord suivre le tutoriel <a class=\"link\" href=\"https://www.asmtariste.fr/article-content/13/1\" target=\"blank\">\"Capture et conversion d\'image NEO, PI1 et PC1\"</a>.<br>\n<br>\nC\'est bon, tu as ton image ? OK. Alors, tu vas créer quelque part sur un disque dur GEMDOS, un dossier qui portera le nom de ton projet. Par exemple, moi je l\'ai appelé <span class=\"bold\">PROG_ASM.001</span>. Appelle-le comme tu le souhaites, mais il faut que cela ait un rapport avec le thème de ton programme.<br>\n<br>\nDans ce dossier, tu vas créer un autre dossier que tu vas appeler <span class=\"bold\">IMAGES</span>. Et dedans, tu copies l\'image PI1 que tu comptes afficher à l\'écran.', '', '', NULL, '1722553106262.png', NULL, '', '', '', 1, 1, 14),
(164, 'Création du programme principale', '', '', 'Très bien, ton image est prête. À présent, tu vas créer un fichier source avec <span class=\"bold\">DevPac</span>, avec comme première ligne un commentaire sur ce que fait le programme. Exemple :<br>\n<span class=\"code\">; Programme qui sert à afficher une image</span><br>\n<br>\nSauvegarde-le à la racine de ton projet et appelle-le <span class=\"bold\">MAIN.S</span>, de cette façon, on devine que c\'est ce fichier qui est le point d\'entrée du programme <span class=\"italic\">(ça va rappeler quelque chose à ceux qui font du C)</span>.<br>\n<br>\nMaintenant, nous allons assembler le programme et l\'exécuter ! Pour exécuter un programme avec <span class=\"bold\">DevPac</span>, tu vas soit dans le menu <span class=\"bold\">Program</span> -> <span class=\"bold\">Run</span>, ou mieux, mémorise le raccourci <span class=\"keyboard-key\">Alternate</span> + <span class=\"keyboard-key\">X</span>.<br>\n<br>\nTu vois ce qui se produit ? En fait, ton programme démarre (même s\'il n\'y a rien dedans), mais il ne s\'arrête pas correctement.', '', '', NULL, '1722554103617.png', NULL, '', '', '', 1, 1, 14),
(165, '', '', 'Pterm0()', '', '', 'Donc, comment permettre à un programme de se terminer correctement ? Eh bien, il faut faire appel à une fonction fournie par l\'une des couches qui composent le TOS, elle se nomme <span class=\"bold\"><span class=\"color-red\">Pterm0()</span></span>. Le TOS est composé de plusieurs couches, comme par exemple le <span class=\"bold\">GEMDOS</span>. Et <span class=\"bold\"><span class=\"color-red\">Pterm0()</span></span> est fournie par le <span class=\"bold\">GEMDOS</span>. Tu peux aller jeter un œil dans le menu documentation du site, tu y trouveras les fonctions proposées par les différentes couches du TOS, comme le BIOS, XBIOS, GEMDOS, etc.<br>\n<br>\nSelon la documentation, voici comment employer cette fonction :<br>\n<span class=\"code\">move.w #0,-(sp)     ; fonction n°0<br>\ntrap #1     ; appel au GEMDOS</span><br>\n<br>\nCe que dit le code, c\'est que l\'<span class=\"bold\"><span class=\"underline\">on envoie la valeur 0 dans la pile</span></span> <span class=\"italic\">(tu te souviens du registre a0 ou \'sp\' ?)</span> avec une <span class=\"underline\">pré-décrémentation</span>. Pour rappel, <span class=\"bold\">-(sp)</span> signifie que l\'on décrémente d\'abord le registre de la pile d\'un word <span class=\"italic\">(à cause du suffixe .w)</span> pour ensuite y stocker l<span class=\"bold\">a valeur 0, qui correspond au numéro de la fonction <span class=\"color-red\">Pterm0()</span></span> <span class=\"italic\">(et oui, chaque fonction porte un identifiant)</span>. Ensuite, <span class=\"bold\">trap #1</span> fait appel au <span class=\"bold\">GEMDOS</span> <span class=\"italic\">(oui le GEMDOS est identifié par le #1)</span>. Pendant cet appel au <span class=\"bold\">GEMDOS</span>, les paramètres passés dans la pile sont <span class=\"underline\">\"dépilés\"</span> pour être lus et exécutés par le <span class=\"bold\">GEMDOS</span>.<br>\n<br>\nAssemble et exécute à nouveau, ton programme démarre et se termine sans aucune erreur !', NULL, NULL, NULL, '', '', '', 1, 4, 14),
(166, 'Inclure l\'image dans la programme', '', '', 'Bah oui, il faut bien la mettre quelque part cette image pour qu\'elle soit lue ensuite. Une image ne se place pas n\'importe où, pour cela, on dispose d\'une directive d\'assemblage. C\'est propre à l\'assembleur, donc ici dans <span class=\"bold\">DevPac</span>, il s\'agit des directives <span class=\"bold\">SECTION</span>.<br>\n<br>\nIl y en a plusieurs, mais tu dois en connaître trois principales : <br>\n<span class=\"bold\">SECTION TEXT<br>\nSECTION DATA<br>\nSECTION BSS</span>', '', '', NULL, '1722557687746.png', NULL, '', '', '', 1, 1, 14),
(167, '', '', '', '', '', 'Ton image devra être placée dans <span class=\"bold\"><span class=\"color-red\">SECTION DATA</span></span>. Pourquoi ? Cette section est utilisée <span class=\"bold\"><span class=\"underline\">pour les données initialisées</span></span>. Les données placées ici sont celles qui ont une valeur définie au moment de l\'assemblage et qui doivent être présentes dès le démarrage du programme. <span class=\"bold\">Une image PI1, qui est un fichier binaire contenant des données graphiques, a des valeurs définies et connues au moment de l\'assemblage.</span><br>\n<br>\nTon code, quant à lui, devra être placé dans <span class=\"bold\"><span class=\"color-red\">SECTION TEXT</span></span>. Il contient <span class=\"bold\"><span class=\"underline\">le code exécutable</span></span>. C\'est là que tu écris les instructions machine que le processeur doit exécuter. <br>\n<br>\n<span class=\"bold\"><span class=\"color-red\">SECTION BSS</span></span> contient <span class=\"bold\"><span class=\"underline\">les données non initialisées</span></span>. Les variables déclarées ici ne sont pas initialisées et sont mises à zéro par le système au démarrage. C\'est utilisé pour les variables globales ou statiques.<br>\nAs-tu remarqué certains éléments dans l\'exemple de code suivant ?<br>\n<span class=\"code\">monImage:<br>\n          incbin images/rainbow.pi1</span><br>\n<span class=\"color-red\"><span class=\"bold\">monImage:</span></span> : Ce label n\'a pas d\'indentation <span class=\"italic\">(comme les commentaires)</span> et ne commence pas par un <span class=\"keyboard-key\">;</span>, donc ce n\'est pas un commentaire mais un <span class=\"bold\">label</span>. Un label est un repère textuel dans le code qui sera associé à une adresse mémoire une fois le code assemblé. Dans cet exemple, <span class=\"bold\">monImage</span> est utilisé pour marquer l\'emplacement en mémoire où l\'image sera placée.<br>\n<br>\n<span class=\"color-red\"><span class=\"bold\">incbin</span></span> : Il s\'agit d\'une <span class=\"underline\">directive</span> d\'inclusion. Elle permet d\'inclure le contenu d\'un fichier binaire dans le programme. Dans cet exemple, <span class=\"bold\">incbin images/rainbow.pi1</span> inclut le fichier binaire rainbow.pi1 situé dans le répertoire images.<br>\nAinsi, on peut dire que l\'image <span class=\"bold\">PI1</span> est incluse dans la <span class=\"bold\">SECTION DATA</span> à l\'adresse spécifiée par le label <span class=\"bold\">monImage</span>.<br>\n<br>\n', NULL, NULL, NULL, '', '', '', 1, 4, 14),
(168, '', '', 'Afficher l\'image à l\'écran', '', '', 'Bon, à priori, on est bien, non ? Notre programme possède une structure, on a inclus notre image dans la bonne section et le programme se termine correctement !<br>\nUne image <span class=\"bold\">Degas Elite PI1</span> possède une en-tête qui nous donne des informations sur la résolution de l\'image ainsi que sur la palette utilisée.<br>\n<br>\n<div class=\"border-green\"><p>Rappel :<br>\nLes 2 premiers octets correspondent à sa résolution.<br>\nLes 32 octets suivants correspondent à la palette.<br>\nÀ partir du 34e octet, ce sont les données de l\'image (32 000 octets).</p></div><br>\n<br>\n<span class=\"bold\">Les données de l\'image sont stockées de façon linéaire</span>, ce qui signifie que les données à afficher sont dans l\'ordre et se suivent. Donc, si l\'on souhaite obtenir l\'adresse exacte du début de l\'image, c\'est <span class=\"bold\"><span class=\"color-red\">monImage + 2 octets + 32 octets</span></span>. Autrement dit, en assembleur, si je veux stocker l\'adresse de l\'image <span class=\"italic\">(un long word)</span> dans le registre a0 :<br>\n<span class=\"code\">move.l #monImage+34, a0</span><br>\n<br>\nAs-tu remarqué que j\'ai un <span class=\"keyboard-key\">#</span> juste avant le nom du label <span class=\"bold\">monImage:</span> ?<br>\nEffectivement, quand on utilise un label, on enlève d\'une part les <span class=\"keyboard-key\">:</span> et si on veut <span class=\"underline\">l\'adresse du label</span>, on rajoute le <span class=\"keyboard-key\">#</span>.<br>\nEn revanche, si on avait besoin <span class=\"underline\">des octets contenus à l\'adresse du label</span>, on ne met pas de <span class=\"keyboard-key\">#</span>.<br>\nDernière chose, on souhaite afficher cette image à l\'écran. Il te faut donc une adresse qui corresponde à la RAM écran <span class=\"italic\">(appelée \'framebuffer\' ou \'écran logique\', pour rappel)</span>. Si tu es arrivé ici sans avoir suivi le cours <a class=\"link\" href=\"https://www.asmtariste.fr/article-content/10/2\" target=\"blank\">\"La RAM et la ROM\"</a>, alors il va te manquer des prérequis.<br>\n<br>\nAvec notre configuration de 4 Mo, notre framebuffer est donc à l\'adresse <span class=\"bold\">$3F8000</span>, ce qui donne en assembleur :<br>\n<span class=\"code\">move.l #$3F8000, a1</span><br>\nTu remarques une nouvelle fois le <span class=\"keyboard-key\">#</span>. Cela signifie que <span class=\"underline\">l\'on utilise la valeur</span> $3F8000 que l\'on stocke dans le registre a1. (Si on enlève le <span class=\"keyboard-key\">#</span>, cela signifierait que l\'on envoie <span class=\"underline\">les octets contenus à l\'adresse</span> $3F8000 vers a1.)', NULL, NULL, NULL, '', '', '', 2, 4, 14),
(170, '', '', '', 'Voici le principe décrit par le schéma de droite :<br>\n<br>\n<span class=\"underline\"><span class=\"bold\"><span class=\"color-red\">a0</span></span> est notre pointeur d\'adresse de <span class=\"bold\"><span class=\"color-red\">l\'image</span></span></span><br>\n<span class=\"underline\"><span class=\"bold\"><span class=\"color-green\">a1</span></span> est notre pointeur d\'adresse de <span class=\"bold\"><span class=\"color-green\">l\'écran</span></span></span><br>\n<br>\nOn doit recopier les octets contenus à l\'adresse de <span class=\"color-red\">a0</span>, vers l\'adresse que contient <span class=\"color-green\">a1</span>, par groupe de 4 octets. En assembleur, cela donne :<br>\n<br>\n<span class=\"code\">move.l (a0),(a1)<br>\nadd.l #4,(a0)<br>\nadd.l #4,(a1)</span>', '', '', NULL, '1722595254174.png', NULL, '', '', '', 2, 1, 14),
(171, '', '', 'Créer une boucle', '', '', 'Ce n\'est pas terrible comme solution, surtout que l\'on a vu ce qu\'était la post-incrémentation ! Si tu ne vois pas de quoi je parle, alors STOP ! Il te manque le cours <a class=\"link\" href=\"https://www.asmtariste.fr/article-content/11/1\" target=\"blank\">\"Les registres du 68000\"</a>. Si on améliore un peu le code, ça donne :<br>\n<span class=\"code\">move.l (a0)+,(a1)+</span><br>\n<br>\nÀ chaque exécution de cette ligne, chaque registre aura sa valeur incrémentée de 4 octets ! Alors le problème qui va se poser, c\'est qu\'il faut répéter ça 8000 fois (de 0 à 7999). Je sais à quoi tu penses, tu te dis que c\'est facile car tu connais une directive pour répéter ton code :<br>\n<span class=\"code\">REPT 7999<br>\nmove.l (a0)+,(a1)+<br>\nENDR</span><br>\n<br>\nSauf que là, tu vas dupliquer ton instruction 7999 fois dans la mémoire ! Non, on va faire une vraie boucle avec une nouvelle instruction : <span class=\"bold\">DBF</span> ou son équivalent <span class=\"bold\">DBRA</span><br>\n<span class=\"bold\">DBF</span> est une instruction de comparaison.<br>\nPour la comprendre, il faut voir cette syntaxe : <span class=\"bold\">DBcc</span> <span class=\"italic\">Dn</span>, <span class=\"italic\">label</span>.<br>\n<br>\n<span class=\"bold\">DB</span> représente l\'instruction, quant à <span class=\"bold\">cc</span>, c\'est simplement son suffixe qui, dans notre cas, est <span class=\"bold\">F</span>.<br>\n<span class=\"bold\">F</span> indique une condition fausse . <span class=\"italic\">Dn</span> représente un registre de données de d0 à d7.<br>\n<span class=\"italic\">Label</span> indique l\'adresse vers laquelle on boucle si la condition <span class=\"bold\">F</span> est vérifié (donc ici fausse).<br>\n<br>\n<span class=\"bold\">DBF</span> vérifie a chaque passage si la valeur de <span class=\"italic\">Dn</span> est ou non égale à -1 ($FFFF en hexa), SI c\'est le cas on passe à l\'instruction suivante.<br>\nSi ce n\'est pas le cas alors on retourne à <span class=\"italic\">label</span> et <span class=\"italic\">Dn</span> est décrémenté de 1. Simple non ?', NULL, NULL, NULL, '', '', '', 2, 4, 14),
(172, '', '', '', 'Ouvre Devpac et tape ce petit programme, ensuite assemble le et ouvre Monst :<br>\n<span class=\"code\">          move.l #$66666,a0     ; lecture d\'une adresse au pif<br>\n          move.l #$3F8000,a1     ; framebuffer<br>\n          move.b #9,d0     ; compteur à 9<br>\nloop:<br>\n          move.l (a0)+,(a1)+<br>\n          dbf d0,loop</span><br>\n<br>\n<div class=\"border-yellow\"><p>Remarque:<br>\n<span class=\"bold\">d0 se décrémente</span> de 1 à chaque passage sur dbf<br>\nQuand <span class=\"bold\">d0 = -1</span> ($FFFF) alors la boucle s\'arrête et on passe à la suite <span class=\"italic\">(si d0 = 9 alors on obtient 10 boucles)</span></p></div>', '', '', NULL, '1722598432585.png', NULL, '', '', '', 2, 1, 14),
(173, '', '', '', 'Ajoute ces lignes juste après SECTION TEXT :<br>\n<span class=\"code\">; Afficher l\'image<br>\n          move.l #monImage+34,a0     ; adresse de l\'image<br>\n          move.l #$3F8000,a1     ; adresse du framebuffer<br>\n          move.w #8000-1,d0     ; le compteur de long word<br>\nloop:<br>\n          move.l (a0)+,(a1)+     ; on recopie à l\'écran<br>\n          dbf d0,loop     ; on boucle jusqu\'à -1</span><br>\n<br>\nAssemble ton programme, puis direction le débogueur dans lequel je vais t\'apprendre une nouvelle chose très pratique.<br>\n<br>\nSi tu traces ton code avec <span class=\"keyboard-key\">Ctrl</span> + <span class=\"keyboard-key\">T</span>, sur une boucle qui va boucler 8000 fois, ça va être long ! Alors, on va mettre ce que l\'on appelle un <span class=\"bold\">breakpoint</span>, c\'est-à-dire un point d\'arrêt là où tu souhaites que ton programme s\'arrête.<br>\n<br>\nDéfile ton programme avec les flèches curseur juste après ta boucle et utilise le raccourci <span class=\"keyboard-key\">Ctrl</span> + <span class=\"keyboard-key\">B</span>. Tu devrais voir apparaître <span class=\"bold\"></span>, qui représente l\'endroit où ton programme va s\'arrêter si tu l\'exécutes dans <span class=\"bold\">Monst</span>.<br>\n<br>\nEt d\'ailleurs, c\'est ce que l\'on va faire : <span class=\"keyboard-key\">Ctrl</span> + <span class=\"keyboard-key\">R</span> pour exécuter ton programme jusqu\'au <span class=\"bold\">breakpoint</span>. Ensuite la touche <span class=\"keyboard-key\">V</span> pour voir ce qui s\'est passé à l\'écran', '', '', NULL, '1722601647366.png', NULL, '', '', '', 2, 1, 14),
(174, '', '', '', '', '', '', NULL, NULL, '1722601920279.png', '', '', '', 2, 5, 14),
(175, '', '', 'Changer la résolution de l\'image', '', '', 'On a effectivement un petit problème : <span class=\"bold\">on essaye d\'afficher une image en haute résolution alors qu\'on est en moyenne résolution</span>. Pour changer de résolution, il faut faire appel à une autre couche qui compose le <span class=\"bold\">TOS</span>, comme on l\'a déjà fait pour <span class=\"bold\">Pterm0()</span>. Mais cette fois-ci, c\'est une fonction du <span class=\"bold\">XBIOS</span>, la couche la plus basse du TOS.<br>\n<br>\nLa fonction s\'appelle <span class=\"bold\"><span class=\"color-red\">Setscreen()</span></span> et c\'est la <span class=\"bold\">fonction numéro 5</span>. Elle ne permet pas seulement de définir la résolution de l\'écran, mais aussi de définir l\'adresse de l\'écran logique (le framebuffer) et de l\'écran physique.<br>\n<br>\nSelon la documentation du XBIOS, voici comment on appelle cette fonction en assembleur :<br>\n<span class=\"code\">          move.w #0,-(sp)      ; 0 : basse résolution<br>\n          move.l #-1,-(sp)     ; -1 = écran physique : pas de changement<br>\n          move.l #-1,-(sp)     ; -1 = écran logique  : pas de changement<br>\n          move.w #5,-(sp)      ; 5 = numéro de la fonction<br>\n          trap #14             ; 14 = appel du XBIOS<br>\n          add.w #12,sp         ; 12 = w + l + l + w</span><br>\n<br>\nLe principe est exactement le même que pour <span class=\"bold\">Pterm0()</span> : on envoie nos paramètres dans la pile, et ensuite ils seront dépilés pour être pris en compte par la fonction.<br>\n<br>\nSeulement, on a une petite nouveauté : <span class=\"bold\">add.w #12,sp</span><br>\nLe fait d\'avoir rempli la pile avec nos paramètres a décalé l\'adresse de la dernière valeur de <span class=\"underline\">12 octets</span>, donc ça risque de planter si on ne rectifie pas la pile à sa valeur d\'origine.<br>\nIl suffit de compter le nombre d\'octets qu\'on lui a envoyés avec nos paramètres : <span class=\"bold\">1 word, 2 long words et 1 autre word = 2 octets + 2 * 4 octets + 2 autres octets = 12</span>.<br>\n<br>\n<div class=\"border-green\"><p>A retenir : <br>\nLes valeurs -1 sont passé pour dire \"on ne change pas les valeur de ces paramètres\"<br>\nValeur pour la basse résolution : 0<br>\nValeur pour la moyenne résolution : 1<br>\nValeur pour la haute résolution : 2</p></div><br>\n<br>\nAlors tu vas coller ce bout de code au tout début de ton fichier source en choisissant comme paramètre : <span class=\"bold\">0 (basse résolution)</span><br>\n<br>\n<div class=\"border-red\"><p>Attention : <br>\nQuand ton programme se termine il faut revenir en moyenne résolution ....</p></div><br>\nDonc tu sais quoi faire, je te laisse te débrouiller.<br>\n<br>\nAlors tiens, c\'est cadeau : je te présente une autre fonction <span class=\"bold\">GEMDOS</span> très pratique qui s\'appelle <span class=\"bold\"><span class=\"color-red\">Cconin()</span></span>. Cette fonction attend la pression d\'une touche du clavier. Elle fait même mieux que ça : <span class=\"bold\"><span class=\"underline\">elle renvoie automatiquement dans le registre d0 le code hexadécimal de la touche que tu as pressée</span></span>. Pour le moment, ce n\'est pas essentiel, mais c\'est bon à savoir. Certaines fonctions renvoient des valeurs dans les registres, donc il est important de bien lire la documentation de ces instructions pour éviter les mauvaises surprises.<br>\nPlace ce code juste après ta boucle d\'affichage de l\'image. Cela te laissera le temps de voir le résultat sans avoir à utiliser le raccourci <span class=\"keyboard-key\">V</span> de <span class=\"bold\">Monst</span> à chaque fois :<br>\n<span class=\"code\">; Attendre une pression de touche<br>\n          move.w #1,-(sp)     ; 1 = numéro de la fonction Cconin<br>\n          trap #1             ; appel du GEMDOS<br>\n          add #2,sp          ; ajuster la pile (1 word = 2 octets)</span><br>\nTu devrais obtenir un meilleur résultat :  ', NULL, NULL, NULL, '', '', '', 3, 4, 14),
(176, '', '', '', '', '', '', NULL, NULL, '1722606317693.png', '', '', '', 3, 5, 14),
(177, '', '', 'Charge la palette le couleur de l\'image', '', '', 'Bon y\'a du mieux mais il manque encore les bonnes couleurs ! Pour le moment ton programme devrait à peu près ressembler à çà : <br>\n<br>\n<span class=\"code\">; Programme qui sert à l\'affichage d\'une image PI1 en haute résolution<br>\n<br>\n	SECTION TEXT<br>\n<br>\n; Passage en basse résolution<br>\n; Afficher l\'image<br>\n; Attendre une touche	<br>\n; Passage en moyenne résolution<br>\n; Terminer le programme<br>\n<br>\n	SECTION DATA<br>\nmonImage:<br>\n	incbin	images/rainbow.pi1</span><br>\n<br>\nAvant d\'aller plus loin, il est important de mettre un peu d\'ordre dans tout ça. Crée un nouveau fichier (raccourci <span class=\"keyboard-key\">Alternate</span> + <span class=\"keyboard-key\">C</span>) et lorsque tu veux passer d\'une fenêtre à l\'autre, utilise <span class=\"keyboard-key\">Ctrl</span> + <span class=\"keyboard-key\">V</span>. Appelle ce fichier <span class=\"bold\">TRAPS.S</span> et copie-colle toutes tes fonctions qui utilisent les appels au <span class=\"bold\">GEMDOS</span> et au <span class=\"bold\">XBIOS</span>, à savoir : <span class=\"bold\">Setscreen(), Cconin() et Pterm0()</span>.<br>\n<br>\n<div class=\"border-green\"><p>Astuce pour le copier-coller dans DevPac :<br>\nPour sélectionner un bloc de code avec la souris comme d\'habitude, puis :<br>\n<span class=\"keyboard-key\">Shift</span> + <span class=\"keyboard-key\">F4</span> pour copier<br>\n<span class=\"keyboard-key\">Shift</span> + <span class=\"keyboard-key\">F5</span> pour couper<br>\n<span class=\"keyboard-key\">F5</span> pour coller</p></div><br>\n<br>\nPour chaque bout de code tu va créer une description de ton bout de code et un nom de label, par exemple pour <span class=\"bold\">Setscreen()</span> çà donnera çà : <br>\n<span class=\"code\">; ------------------------------<br>\n; Changing the screen resolution<br>\n;<br>\n; params : d0 = resolution value<br>\n; ------------------------------<br>\nchangeResolution:<br>\n	move.w	d0,-(sp)		; push resolution value<br>\n	move.l	#-1,-(sp)		; push physical screen adress<br>\n	move.l  #-1,-(sp)		; push logical screen adress<br>\n	move.w	#_Setscreen,-(sp)	; push Setscreen function number<br>\n	trap 	#XBIOS			; XBIOS call	<br>\n	add.w	#12,sp			; pop stack<br>\n	rts</span><br>\n<br>\n<span class=\"bold\">PAS DE PANIQUE !</span> Je vais t\'expliquer ce que j\'ai fait et pourquoi. Si tu mets tout ton code dans <span class=\"bold\">MAIN.S</span>, ton fichier deviendra vite illisible. Il est donc important de structurer ton code. Par exemple, tous les appels aux fonctions <span class=\"bold\">GEMDOS</span> et <span class=\"bold\">XBIOS</span> seront regroupés au même endroit. Cela simplifie la recherche et offre une meilleure vision globale de l\'architecture de ton code.<br>\n<br>\n<span class=\"bold\"><span class=\"underline\">Explications sur les modifications :</span></span><br>\n<span class=\"underline\">Le label <span class=\"bold\">changeResolution:</span></span> est désormais la nouvelle adresse, et ton code sera référencé sous ce label.<br>\n<span class=\"underline\">1ère ligne :</span> J\'ai remplacé <span class=\"bold\">#0</span> par le nom d\'un registre. Idéalement, nous souhaitons utiliser ce code pour les 3 résolutions, sans dupliquer le code entier juste pour une valeur qui change. Cette valeur devient donc une variable.<br>\n<br>\n<span class=\"underline\">4ème ligne :</span> À la place de <span class=\"bold\">#5</span>, j\'ai écrit <span class=\"bold\">#_Setscreen</span>. J\'ai créé un fichier <span class=\"bold\">PARAMS.S</span> contenant la directive d\'assemblage <span class=\"bold\">EQU</span>. Par exemple :<br>\n<span class=\"code\">_Setscreen    EQU    5</span><br>\nCela signifie que si tu écris <span class=\"bold\">_Setscreen</span>, l\'assembleur le remplacera par <span class=\"bold\">5</span>.<br>\n<br>\n<span class=\"underline\">5ème ligne :</span> À la place de <span class=\"bold\">#14</span>, j\'ai écrit <span class=\"bold\">#XBIOS</span>. C\'est le même principe que précédemment, défini également dans le fichier <span class=\"bold\">PARAMS.S</span>.<br>\n<br>\n<span class=\"underline\">Dernière ligne :</span> <span class=\"bold\">RTS</span>. Cette instruction du 68000 utilise une adresse stockée dans la pile avec l\'instruction <span class=\"bold\">BSR</span>. Cela permet de revenir à l\'adresse suivant celle à laquelle l\'appel <span class=\"bold\">bsr changeResolution</span> a été invoqué.<br>\n', NULL, NULL, NULL, '', '', '', 4, 4, 14),
(178, '', '', '', '', '', 'Normalement tu devrais avoir dans mon fichier MAIN.S : <br>\n<span class=\"code\">; Programme qui sert  l\'affichage d\'une image PI1 en haute rsolution<br>\n<br>\n	SECTION TEXT<br>\n	<br>\n	move.w	#LOW_RES,d0		; set resolution<br>\n	bsr	changeResolution	<br>\n<br>\n; Afficher l\'image<br>\n	move.l 	#monImage+34,a0	; adresse de l\'image<br>\n	move.l 	#$3F8000,a1	; adresse du framebuffer<br>\n	move.w 	#8000-1,d0	; le compteur de long word<br>\nloop:<br>\n	move.l 	(a0)+,(a1)+<br>\n	dbf	d0,loop		<br>\n<br>\n	bsr	waitKey		; waiting for a key<br>\n<br>\n	move.w	#MID_RES,d0	; restore resolution<br>\n	bsr	changeResolution<br>\n<br>\n	jmp	exitProgram	; terminate and back to GEM<br>\n<br>\n	include traps.s<br>\n	include params.s<br>\n<br>\n	SECTION DATA<br>\n<br>\nmonImage:<br>\n	incbin	images/rainbow.pi1</span><br>\n<br>\n<div class=\"border-yellow\"><p>Note :<br>\nLa directive <span class=\"bold\">include</span> permet d\'inclure une fichier source dans un autre, évitant ainsi des fichiers trop long, et permettant une meilleur lisibilité</p></div>', NULL, NULL, NULL, '', '', '', 4, 4, 14),
(179, '', '', '', '', '', 'Dernière ligne droite avant le questionnaire !<br>\nTu vas maintenant ajouter une nouvelle fonction à tes connaissances : la fonction <span class=\"bold\"><span class=\"color-red\">Setpalette()</span></span>. Elle est offerte gracieusement par le <span class=\"bold\">XBIOS</span> et porte le numéro <span class=\"bold\">6</span>.<br>\n<br>\nLe principe est exactement le même que pour les autres fonctions : des paramètres, un appel au <span class=\"bold\">XBIOS</span> et une rectification de la pile :<br>\n<span class=\"code\">; --------------------------<br>\n; Loading a color ST Palette<br>\n;<br>\n; params: <#palette_adr>,a0 <br>\n; -------------------------- <br>\nloadPalette:<br>\n	move.l	a0,-(sp)		; push the palette adress<br>\n	move.w	#_Setpalette,-(sp)	; push the function number<br>\n	trap	#XBIOS			; Calling XBIOS<br>\n	add.w	#6,sp			; pop stack<br>\n	rts</span><br>\n<br>\nUtilisation de la fonction loadPalette : <br>\nTu n\'as plus qu\'à faire un <span class=\"bold\">bsr loadPalette</span> après avoir chargé ta palette dans <span class=\"bold\">a0</span> <span class=\"italic\">(je te rappelle que la palette est située à monImage+2)</span>.', NULL, NULL, NULL, '', '', '', 4, 4, 14),
(180, '', '', '', '', '', '', NULL, NULL, '1722612104472.png', '', '', '', 4, 5, 14),
(181, '', '', 'Fichiers Sources', '', '', 'Voici les fichiers <a class=\"link\" href=\"https://www.asmtariste.fr/assets/files/sources/PROG_ASM.001.zip\" target=\"blank\">sources du cours à télécharger</a>', NULL, NULL, NULL, '', '', '', 4, 4, 14);

-- --------------------------------------------------------

--
-- Structure de la table `disk_units`
--

CREATE TABLE `disk_units` (
  `id_disk_units` int(11) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `letter` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `isDisplay` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `disk_units`
--

INSERT INTO `disk_units` (`id_disk_units`, `label`, `letter`, `icon`, `isDisplay`) VALUES
(1, 'Coding', 'C', NULL, 1),
(2, 'System', 'A', NULL, 1),
(3, 'Graphismes', 'B', NULL, 1),
(4, 'PAO', 'D', NULL, 1),
(5, 'Utilitaires', 'E', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `files`
--

CREATE TABLE `files` (
  `id_files` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `isDisplay` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `files`
--

INSERT INTO `files` (`id_files`, `name`, `isDisplay`) VALUES
(1, 'TOS v1.00 (1986)(Atari Corp)(ST)(Fr).zip', 1),
(2, 'TOS v1.06 (1989)(Atari Corp)(STE)(Fr).zip', 1),
(3, 'TOS v1.62 (1990)(Atari Corp)(STE)(Fr).zip', 1),
(4, 'TOS 1.00_1.06_1.62_EMUTOS_Atrai [Fr].zip', 1),
(5, 'ACSI_harddrive_image.80.zip', 1),
(6, 'Devpac v3.10 (1992)(HiSoft).zip', 1),
(7, 'GFA Basic v3.6 (GFA Systemtechnik).zip', 1),
(8, 'Lattice C ST v5.60 (HiSoft)(Disk1a7).zip', 1),
(9, 'Pure C (Application Systems Heidelberg)(Disk1a3).zip', 1),
(10, 'Advanced OCP Art Studio.zip', 1),
(11, 'Advanced OCP Art Studio (manual).zip', 1),
(12, 'Quantum Paint v2.00.zip', 1),
(13, 'NEOchrome Master v2.28.zip', 1),
(15, 'Degas Elite v1.1.zip', 1),
(16, '1st Word Plus v3.20.zip', 1),
(17, 'Redacteur v4.0beta24 (Disk1 Ã  9).zip', 1),
(18, 'M-Disk v6.0.zip', 1),
(19, 'Ripper v3.1.zip', 1),
(21, 'SysInfo v8.20.zip', 1),
(22, 'DeluxePaint_v1.00_Disk1a3.zip', 1);

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `place` tinyint(4) DEFAULT NULL,
  `isDisplay` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu`
--

INSERT INTO `menu` (`id_menu`, `name`, `link`, `place`, `isDisplay`) VALUES
(1, 'accueil', '/accueil', 1, NULL),
(2, 'news', '/news', 2, NULL),
(3, 'coding', '/coding', 3, NULL),
(4, 'documentation', '/documentation', 4, NULL),
(5, 'certificates', '/certificates', 5, NULL),
(6, 'informations', '/informations', 7, NULL),
(7, 'tutorials', '/tutorials', 6, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `menu_admin`
--

CREATE TABLE `menu_admin` (
  `id_menu_admin` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_admin`
--

INSERT INTO `menu_admin` (`id_menu_admin`, `name`, `link`) VALUES
(1, 'Menu', '/menu-setting'),
(2, 'Articles', '/all-articles'),
(4, 'Dossiers', '/disk-units-setting'),
(5, 'Fichiers', '/unit-files-setting'),
(6, 'Utilisateurs', '/all-users'),
(7, 'Certificats', '/all-certificates');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id_questions` int(11) NOT NULL,
  `text` varchar(256) DEFAULT NULL,
  `id_articles` int(11) DEFAULT NULL,
  `isMultiple` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id_questions`, `text`, `id_articles`, `isMultiple`) VALUES
(1, 'Qu\'est-ce qu\'un émulateur ?', 4, 0),
(2, 'À quoi sert un Ultra Satan ?', 4, 0),
(3, 'Quel est le seul langage que l\'ordinateur comprend ?', 4, 0),
(4, 'À quoi sert un éditeur de texte ?', 4, 0),
(5, 'Quel est le rôle principal d\'un assembleur ?', 4, 0),
(6, 'Que devient le code saisi dans l\'éditeur après l\'assemblage ?', 4, 0),
(7, 'Où est stocké le code source saisi dans l\'éditeur ?', 4, 0),
(8, 'Comment s\'appelle l\'assembleur édité par Hisoft ?', 4, 0),
(9, 'Comment se nomme ce bureau tout vert lorsque l\'on allume un Atari ST ?', 4, 0),
(10, 'Que désigne le TOS ?', 4, 0),
(11, 'Que désigne ASCI pour l\'Atari ST ?', 4, 0),
(12, 'Quelle est la valeur décimale de l\'octet binaire `%11001011` ?', 5, 0),
(13, 'Convertir le nombre décimal `75` en hexadécimal donne :', 5, 0),
(14, 'Quelle est la valeur binaire du nombre hexadécimal `$A3` ?', 5, 0),
(15, 'Quel est le résultat de la conversion binaire `%11100000` en décimal ?', 5, 0),
(16, 'Quelle est la valeur en décimal du bit 7 ?', 5, 0),
(17, 'Quel est l\'octet de poids faible dans la valeur 16 bits `%00001010 00000101` ?', 5, 0),
(18, 'Quelle est la représentation hexadécimale de la valeur décimale `255` ?', 5, 0),
(19, 'Quelle est la valeur binaire du nombre décimal `167` ?', 5, 0),
(20, 'Quel est le quartet de poids fort dans l\'octet binaire `%01101001` ?', 5, 0),
(21, 'Lorsqu\'on convertit le nombre binaire `%00000001 11111111` en décimal, quelle est la valeur totale ?', 5, 0),
(22, 'Que dois-tu faire pour lire le contenu de la disquette de l\'unité A ?', 8, 0),
(23, 'Le programme DevPac peux être installé sur quel support ?', 8, 1),
(24, 'Quels sont les raccourcis clavier pour sauvegarder un fichier dans DevPac ?', 8, 1),
(25, 'Que faire si tu rencontres un problème avec le pavé numérique dans DevPac ?', 8, 0),
(26, 'Comment associer les fichiers sources avec DevPac pour une ouverture rapide ?', 8, 0),
(27, 'Quelle est la différence principale entre la RAM et la ROM ?', 10, 1),
(28, 'Quels sont les différents types de configurations de RAM possibles sur un Atari 1040STe ?', 10, 1),
(29, 'Que représente la valeur hexadécimale $003F8000 dans la mémoire ?', 10, 1),
(30, 'Quels sont les adresses de fin de RAM pour les configurations suivantes : 512 Ko, 1 Mo, 2 Mo, et 4 Mo ?', 10, 0),
(31, 'Dans quelle zone de la RAM le framebuffer est il placé par le TOS quelque soit la configuration ?', 10, 0),
(32, 'Quelle est la fonction de l\'outil The Ripper v3.1 ?', 10, 0),
(33, 'Comment naviguer entre les différentes fenêtres dans DevPac et quel est le raccourci pour ouvrir le débogueur ?', 10, 0),
(34, 'Que représente la valeur $003F8000 affichée à ladresse $44E ?', 10, 1),
(35, 'Pourquoi est-il important de comprendre et visualiser la disposition de la mémoire et des adresses de la RAM ?', 10, 0),
(36, 'Quelles sont les deux catégories principales de registres dans le processeur 68000 ?', 11, 0),
(37, 'Quelle instruction permet d\'envoyer une valeur dans un registre ?', 11, 0),
(38, 'Quelle différence majeure existe-t-il entre les deux catégories de registres mentionnées dans la question 1 ?', 11, 1),
(39, 'Quelle valeur peut-on envoyer dans un registre avec move.b ?', 11, 1),
(40, 'Je veux envoyer la valeur 548 dans un registre, quelle syntaxe est incorrecte ?', 11, 0),
(41, 'Quelles sont les bonnes définitions concernant le registre a7 ?', 11, 1),
(42, 'À quoi servent les suffixes .b, .w et .l ?', 11, 0),
(43, 'J\'ai la valeur $85F0 dans D0, à laquelle je souhaite ajouter la valeur $4, quelles syntaxes fonctionnent ?', 11, 0),
(44, 'Que signifie l\'instruction move.l d0, (a0)+ ?', 11, 0),
(45, 'Quel est l\'autre nom du registre de la pile ?', 11, 1),
(46, 'Quel est le rôle de la fonction `Pterm0()` dans un programme assembleur ?', 14, 0),
(47, 'Quelle section doit contenir les données initialisées dans un programme assembleur ?', 14, 0),
(48, 'Quelle instruction permet d\'inclure un fichier binaire dans un programme assembleur ?', 14, 0),
(49, 'Quel appel système est utilisé pour changer la résolution de l\'écran dans le TOS ?', 14, 0),
(50, 'Quels sont les octets qui correspondent à la palette dans une image PI1 ?', 14, 0),
(51, 'Quels paramètres sont utilisés par la fonction `Setscreen()` du XBIOS pour changer la résolution de l\'écran ?', 14, 1),
(52, 'Que fait l\'instruction `move.l (a0)+,(a1)+` en assembleur ?', 14, 1),
(53, 'Quelles sections doivent être utilisées pour placer le code exécutable et les variables non initialisées ?', 14, 1),
(55, 'Quelle valeur est utilisée pour l\'écran physique et l\'écran logique lorsqu\'on ne veut pas les changer avec `Setscreen()` ?', 14, 0),
(56, 'Quelle directive permet de définir une constante dans un programme assembleur ?', 14, 0),
(57, 'Quelle instruction permet de retourner à l\'adresse suivant celle à laquelle l\'appel BSR a été invoqué ?', 14, 0),
(58, 'Que fait l\'instruction `DBF` en assembleur ?', 14, 0),
(59, 'Comment inclure un fichier source dans un autre pour éviter des fichiers trop longs ?', 14, 0),
(60, 'Quelle fonction GEMDOS attend la pression d\'une touche du clavier et renvoie son code hexadécimal ?', 14, 0);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id_role`, `name`) VALUES
(0, 'ghost'),
(1, 'administrateur'),
(2, 'utilisateur');

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `id_tags` int(11) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tags`
--

INSERT INTO `tags` (`id_tags`, `color`, `label`) VALUES
(1, '#FF5733', 'Basic'),
(2, '#FF6F61', 'ASM'),
(3, '#FFD700', '68000'),
(4, '#00FF7F', 'Atari'),
(5, '#00FFFF', 'Sprite'),
(6, '#1E90FF', 'XBIOS'),
(7, '#FF1493', 'BIOS'),
(8, '#ADFF2F', 'GEMDOS'),
(9, '#FF4500', 'Line-A'),
(10, '#32CD32', 'VDI'),
(11, '#8A2BE2', 'AES'),
(12, '#00BFFF', 'X CONTROL'),
(13, '#FF6347', 'Emulateurs'),
(14, '#FF69B4', 'Scrolling'),
(15, '#FFDAB9', 'Blitter'),
(16, '#4B0082', 'Interruptions'),
(17, '#FF1493', 'TOS'),
(18, '#9400D3', 'Octet'),
(19, '#FFD700', 'Décimal'),
(20, '#7CFC00', 'Binaire'),
(21, '#FF4500', 'Hexadécimal'),
(22, '#7FFFD4', 'Bit');

-- --------------------------------------------------------

--
-- Structure de la table `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(11) NOT NULL,
  `isTitleLeft` tinyint(1) DEFAULT NULL,
  `isTitleRight` tinyint(1) DEFAULT NULL,
  `isTitleCenter` tinyint(1) DEFAULT NULL,
  `isTextLeft` tinyint(1) DEFAULT NULL,
  `isTextRight` tinyint(1) DEFAULT NULL,
  `isTextCenter` tinyint(1) DEFAULT NULL,
  `isImageLeft` tinyint(1) DEFAULT NULL,
  `isImageRight` tinyint(1) DEFAULT NULL,
  `isImageCenter` tinyint(1) DEFAULT NULL,
  `isAttachementLeft` tinyint(1) DEFAULT NULL,
  `isAttachementRight` tinyint(1) DEFAULT NULL,
  `isAttachementCenter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `templates`
--

INSERT INTO `templates` (`id_templates`, `isTitleLeft`, `isTitleRight`, `isTitleCenter`, `isTextLeft`, `isTextRight`, `isTextCenter`, `isImageLeft`, `isImageRight`, `isImageCenter`, `isAttachementLeft`, `isAttachementRight`, `isAttachementCenter`) VALUES
(1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(3, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(6, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0),
(7, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0),
(8, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0),
(9, 1, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `to_contain`
--

CREATE TABLE `to_contain` (
  `id_disk_units` int(11) NOT NULL,
  `id_files` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `to_contain`
--

INSERT INTO `to_contain` (`id_disk_units`, `id_files`) VALUES
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 15),
(3, 22),
(4, 16),
(4, 17),
(5, 18),
(5, 19),
(5, 21);

-- --------------------------------------------------------

--
-- Structure de la table `to_graduate`
--

CREATE TABLE `to_graduate` (
  `id_articles` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_certificates` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `to_graduate`
--

INSERT INTO `to_graduate` (`id_articles`, `id_users`, `id_certificates`) VALUES
(4, 3, 8),
(4, 7, 10),
(4, 10, 9),
(4, 11, 23),
(5, 3, 11),
(5, 7, 12),
(5, 10, 17),
(5, 11, 25),
(8, 7, 15),
(8, 11, 24),
(10, 7, 16),
(10, 10, 18),
(10, 11, 22),
(11, 7, 20),
(11, 11, 21);

-- --------------------------------------------------------

--
-- Structure de la table `to_have`
--

CREATE TABLE `to_have` (
  `id_articles` int(11) NOT NULL,
  `id_tags` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `to_have`
--

INSERT INTO `to_have` (`id_articles`, `id_tags`) VALUES
(1, 4),
(2, 7),
(3, 17),
(4, 13),
(5, 18),
(5, 19),
(5, 20),
(5, 21),
(5, 22),
(6, 4),
(7, 6),
(7, 7),
(7, 8),
(8, 2),
(8, 4),
(9, 4),
(10, 3),
(10, 4),
(11, 2),
(11, 3),
(12, 2),
(12, 3),
(13, 4),
(14, 2),
(14, 3),
(14, 6);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `hashpassword` varchar(265) DEFAULT NULL,
  `isActivated` tinyint(1) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `registrationDate` date DEFAULT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_users`, `username`, `email`, `hashpassword`, `isActivated`, `firstname`, `lastname`, `registrationDate`, `id_role`) VALUES
(1, 'zisquier', 'tbressel.dev@gmail.com', '$2a$10$8WECOsML1uyIZPxqdKphaeg3kvM7kZmm/xysUcGAW6S4r5nA2LIrW', 1, 'null', 'null', '2024-06-27', 1),
(3, 'Shaoth', 'edamain@gmail.com', '$2a$10$DByJyQypaeg5r9hu1P2hweWmuY.lnteBIzZsidsEiJLw.pEVAdPvi', 1, 'null', 'null', '2024-07-05', 2),
(5, 'Darian', 'jm.piamiat@gmail.com', '$2a$10$1obq.WkC2Rng9DKJvnEn1.2qJx83kFmlABAIMRT2knAIxSC0h4AU2', 1, 'null', 'null', '2024-07-10', 2),
(6, 'duruti', 'duruti43@gmail.com', '$2a$10$VxkPQdGv0k30EdiPJOocH.CHpg/HwahHxIc/cT1V2E5zdkgpCoA7i', 1, 'null', 'null', '2024-07-10', 2),
(7, 'Mokona', 'mokona@zaclys.net', '$2a$10$LXsMkkqAfUBpIPyH9aIuRehFbdr8f8w4zCOM/PrymUBIG77.1Bo0.', 1, 'null', 'null', '2024-07-10', 2),
(8, 'caviar56', 'nprou1@free.fr', '$2a$10$Zi.mbB2zriA/TiKqDuhlzON8zGNe4DGkSa/QtLbkSO4tfqV9RtR.y', 1, 'null', 'null', '2024-07-10', 2),
(9, 'pasou94', 'pascalsou@hotmail.com', '$2a$10$CMrc5URcT4y.jqNHythVy.WkerA2ZKMuakOXdXS9hhQJtKUE8mON.', 1, 'null', 'null', '2024-07-11', 2),
(10, 'dlfrsilver', 'dlfrsilver@gmail.com', '$2a$10$GujEGaFT7MJXoxX5RZWUYua1iMOuO.jHBcPJyeElR6gZkYZOVhBc.', 1, 'null', 'null', '2024-07-15', 2),
(11, 'Freddo', 'freddo@etik.com', '$2a$10$R.bpMXyq1tjw9iX.ciRl4ugLVd.92Dxx1CAQgHlxt475JBBKYCBPy', 1, 'null', 'null', '2024-08-01', 2),
(12, 'vinz', 'vincent.barrilliot@laposte.net', '$2a$10$OwL9nL2a5/mshO2l5QcqkulmrLK4pcQUebvvt2WDdpYNwzZHx/7m6', 1, 'null', 'null', '2024-08-01', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id_articles`),
  ADD KEY `id_categories` (`id_categories`),
  ADD KEY `id_users` (`id_users`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categories`);

--
-- Index pour la table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id_certificates`);

--
-- Index pour la table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`id_choices`),
  ADD KEY `id_questions` (`id_questions`);

--
-- Index pour la table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id_contents`),
  ADD KEY `id_templates` (`id_templates`),
  ADD KEY `id_articles` (`id_articles`);

--
-- Index pour la table `disk_units`
--
ALTER TABLE `disk_units`
  ADD PRIMARY KEY (`id_disk_units`);

--
-- Index pour la table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id_files`);

--
-- Index pour la table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Index pour la table `menu_admin`
--
ALTER TABLE `menu_admin`
  ADD PRIMARY KEY (`id_menu_admin`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id_questions`),
  ADD KEY `id_articles` (`id_articles`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id_tags`);

--
-- Index pour la table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Index pour la table `to_contain`
--
ALTER TABLE `to_contain`
  ADD PRIMARY KEY (`id_disk_units`,`id_files`),
  ADD KEY `id_files` (`id_files`);

--
-- Index pour la table `to_graduate`
--
ALTER TABLE `to_graduate`
  ADD PRIMARY KEY (`id_articles`,`id_users`,`id_certificates`),
  ADD KEY `id_users` (`id_users`),
  ADD KEY `id_certificates` (`id_certificates`);

--
-- Index pour la table `to_have`
--
ALTER TABLE `to_have`
  ADD PRIMARY KEY (`id_articles`,`id_tags`),
  ADD KEY `id_tags` (`id_tags`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`),
  ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id_articles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categories` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id_certificates` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `choices`
--
ALTER TABLE `choices`
  MODIFY `id_choices` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT pour la table `contents`
--
ALTER TABLE `contents`
  MODIFY `id_contents` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT pour la table `disk_units`
--
ALTER TABLE `disk_units`
  MODIFY `id_disk_units` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `files`
--
ALTER TABLE `files`
  MODIFY `id_files` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `menu_admin`
--
ALTER TABLE `menu_admin`
  MODIFY `id_menu_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id_questions` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id_tags` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`id_categories`) REFERENCES `categories` (`id_categories`),
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`);

--
-- Contraintes pour la table `choices`
--
ALTER TABLE `choices`
  ADD CONSTRAINT `choices_ibfk_1` FOREIGN KEY (`id_questions`) REFERENCES `questions` (`id_questions`);

--
-- Contraintes pour la table `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_ibfk_1` FOREIGN KEY (`id_templates`) REFERENCES `templates` (`id_templates`),
  ADD CONSTRAINT `contents_ibfk_2` FOREIGN KEY (`id_articles`) REFERENCES `articles` (`id_articles`);

--
-- Contraintes pour la table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`id_articles`) REFERENCES `articles` (`id_articles`);

--
-- Contraintes pour la table `to_contain`
--
ALTER TABLE `to_contain`
  ADD CONSTRAINT `to_contain_ibfk_1` FOREIGN KEY (`id_disk_units`) REFERENCES `disk_units` (`id_disk_units`),
  ADD CONSTRAINT `to_contain_ibfk_2` FOREIGN KEY (`id_files`) REFERENCES `files` (`id_files`);

--
-- Contraintes pour la table `to_graduate`
--
ALTER TABLE `to_graduate`
  ADD CONSTRAINT `to_graduate_ibfk_1` FOREIGN KEY (`id_articles`) REFERENCES `articles` (`id_articles`),
  ADD CONSTRAINT `to_graduate_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`),
  ADD CONSTRAINT `to_graduate_ibfk_3` FOREIGN KEY (`id_certificates`) REFERENCES `certificates` (`id_certificates`);

--
-- Contraintes pour la table `to_have`
--
ALTER TABLE `to_have`
  ADD CONSTRAINT `to_have_ibfk_1` FOREIGN KEY (`id_articles`) REFERENCES `articles` (`id_articles`),
  ADD CONSTRAINT `to_have_ibfk_2` FOREIGN KEY (`id_tags`) REFERENCES `tags` (`id_tags`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
