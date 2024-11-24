-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 21 nov. 2024 à 17:47
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `zooarcadia`
--
CREATE DATABASE IF NOT EXISTS `zooarcadia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `zooarcadia`;

-- --------------------------------------------------------

--
-- Structure de la table `animals`
--
-- Création : mar. 19 nov. 2024 à 12:24
--

DROP TABLE IF EXISTS `animals`;
CREATE TABLE IF NOT EXISTS `animals` (
  `animal_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `habitat_id` int(11) DEFAULT NULL,
  `diet` varchar(50) NOT NULL,
  `race_id` int(11) NOT NULL,
  `images` blob DEFAULT NULL,
  PRIMARY KEY (`animal_id`),
  KEY `race_id` (`race_id`),
  KEY `state_id` (`state_id`),
  KEY `habitat_id` (`habitat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONS POUR LA TABLE `animals`:
--   `habitat_id`
--       `habitat` -> `habitat_id`
--   `race_id`
--       `race` -> `race_id`
--   `state_id`
--       `vet_report` -> `vet_report_id`
--

--
-- Déchargement des données de la table `animals`
--

INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(2, 'Alligator - American', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(3, 'Anaconda - Vert', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(4, 'Alligator - American', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(5, 'Boa - Constrictor', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(6, 'Brolga', NULL, 6, 'Omnivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(7, 'Casoar', NULL, 6, 'Frugivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(8, 'Guépard', NULL, 7, 'Carnivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(9, 'Cacatoés', NULL, 6, 'Herbivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(10, 'Grand Carmoran', NULL, 6, 'Carnivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(11, 'Carmoran Pie', NULL, 6, 'Carnivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(12, 'Crocodile de Johnston', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(13, 'Crocodile Marin', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(14, 'Œdicnème Bridé', NULL, 6, 'Carnivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(15, 'Dingo', NULL, 8, 'Carnivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(16, 'Géopélie à nuque rousse', NULL, 6, 'Herbivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(17, 'Colombine turvert', NULL, 6, 'Herbivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(18, 'Ptilope à diadème', NULL, 6, 'Frugivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(19, 'Pogona', NULL, 9, 'Omnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(20, 'Dragon de Komodo', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(21, 'Tadorne radjah', NULL, 6, 'Omnivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(22, 'Aigle d\'Australie', NULL, 6, 'Carnivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(23, 'Échidné à nez court', NULL, 8, 'Carnivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(24, 'Éléphant de Sumatra', NULL, 7, 'Herbivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(25, 'Émeu d\'Australie', NULL, 6, 'Omnivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(26, 'Capucin donacole', NULL, 6, 'Omnivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(27, 'Monstre de Gila', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(28, 'Girafe', NULL, 7, 'Herbivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(29, 'Pintade de Numidie', NULL, 6, 'Omnivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(30, 'Ibis falcinelle', NULL, 6, 'Carnivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(31, 'Brachylophus vitiensis', NULL, 9, 'Omnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(32, 'Cyclura cornuta', NULL, 9, 'Omnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(33, 'Kangourou géant', NULL, 8, 'Herbivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(34, 'Kangourou roux', NULL, 8, 'Herbivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(35, 'Milan sacré', NULL, 6, 'Carnivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(36, 'Koala', NULL, 8, 'Herbivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(37, 'Lémur catta', NULL, 8, 'Herbivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(38, 'Loriquet arc-en-ciel', NULL, 6, 'Omnivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(39, 'Loriquet à col rouge', NULL, 6, 'Omnivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(40, 'Ara bleu', NULL, 6, 'Herbivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(41, 'Ara chloroptère', NULL, 6, 'Herbivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(42, 'Suricate', NULL, 7, 'Carnivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(43, 'Loutre cendrée', NULL, 8, 'Carnivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(44, 'Ninoxe aboyeuse', NULL, 6, 'Carnivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(45, 'Eclectus', NULL, 6, 'Herbivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(46, 'Carpophage argenté', NULL, 6, 'Herbivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(47, 'Pigeon leucomèle', NULL, 6, 'Herbivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(48, 'Colombine wonga', NULL, 6, 'Herbivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(49, 'Brève versicolore', NULL, 6, 'Omnivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(50, 'Python à tête noire', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(51, 'Python birman', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(52, 'Python tapis', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(53, 'Simalia kinghorni', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(54, 'Python d\'eau', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(55, 'Python de Woma', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(56, 'Quokka', NULL, 8, 'Herbivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(57, 'Panda roux', NULL, 8, 'Omnivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(58, 'Rhinocéros blanc du Sud', NULL, 7, 'Herbivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(59, 'Egernia cunninghami', NULL, 9, 'Herbivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(60, 'Taïpan côtier', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(61, 'Serpent des blés', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(62, 'Vipère de la mort', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(63, 'Crotale diamantin', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(64, 'Taïpan du désert', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(65, 'Serpent de la Mulga', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(66, 'Cobra royal', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(67, 'Serpent noir à ventre rouge', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(68, 'jabiru asiatique', NULL, 6, 'Carnivore', 6, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(69, 'Diable de Tasmanie', NULL, 8, 'Carnivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(70, 'Tigre de Sumatra', NULL, 8, 'Carnivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(71, 'Serpent-tigre', NULL, 9, 'Carnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(72, 'Tortue géante des Seychelles', NULL, 9, 'Herbivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(73, 'Tortue étoilée', NULL, 9, 'Herbivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(74, 'Elseya irwini', NULL, 9, 'Omnivore', 7, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(75, 'Wallaby à cou rouge', NULL, 8, 'Herbivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(76, 'Wallaby bicolore', NULL, 8, 'Herbivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(77, 'Wombat commun', NULL, 8, 'Herbivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(78, 'Wombat à nez poilu du Sud', NULL, 8, 'Herbivore', 5, NULL);
INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES(79, 'Zèbre', NULL, 7, 'Herbivore', 5, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--
-- Création : mar. 19 nov. 2024 à 20:24
--

DROP TABLE IF EXISTS `avis`;
CREATE TABLE IF NOT EXISTS `avis` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONS POUR LA TABLE `avis`:
--

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--
-- Création : dim. 20 oct. 2024 à 16:51
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(50) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `isVisible` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONS POUR LA TABLE `comment`:
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--
-- Création : mar. 19 nov. 2024 à 19:54
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONS POUR LA TABLE `contact`:
--

-- --------------------------------------------------------

--
-- Structure de la table `habitat`
--
-- Création : lun. 21 oct. 2024 à 12:30
--

DROP TABLE IF EXISTS `habitat`;
CREATE TABLE IF NOT EXISTS `habitat` (
  `habitat_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`habitat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONS POUR LA TABLE `habitat`:
--

--
-- Déchargement des données de la table `habitat`
--

INSERT INTO `habitat` (`habitat_id`, `name`, `description`, `image_id`) VALUES(6, 'Rainforest Aviary', 'Abritant de nombreux animaux à plumes du zoo d\'Arcadia,le jardin des oiseaux  offre un havre de paix et de verdureà plus de 170 oiseaux de plus de 19 espèces différentes. Initialement connu sous le nom de Grace Bird Garden,le Rainforest Aviary a été rénové et officiellement\r\nrenommé pour offrir un tout nouveau foyer à ces magnifiques animaux.', 0);
INSERT INTO `habitat` (`habitat_id`, `name`, `description`, `image_id`) VALUES(7, 'Africain Safari Parc', 'Couvrant 4,5 hectares, la biozone Afrique est la plus étendue du parc.Elle abrite de grands mammifères tels que des rhinocéros blancs (Ceratotherium simum),des zèbres de Grévy (Equus grevyi), des lions d\'Afrique de l\'ouest (Panthera leo).', 0);
INSERT INTO `habitat` (`habitat_id`, `name`, `description`, `image_id`) VALUES(8, 'Bush Australien', 'Vivez une aventure australienne dans la brousse sauvage de l\'Australie. Voici quelques exemples de koalas du sud, de quokkas et de potoroos à long nez, d\'émeus, de wallabies, de wombats, de kangourous et de toute une gamme d\'oiseaux indigènes, dont le Coq à queue rouge,les perroquets, les pteridons et bien plus encore.', 0);
INSERT INTO `habitat` (`habitat_id`, `name`, `description`, `image_id`) VALUES(9, 'Village de Reptiles', 'Cet espace dédié aux serpents et lézards a été créé en 2011.Le village des reptiles regroupe des pythons royaux, des pythons molures,des boas constricteurs, des iguanes, des téjus… De nombreux panneaux sont disposés dans le village des reptiles qui informent aussi bien sur l\'anatomie\r\n des serpents', 0);

-- --------------------------------------------------------

--
-- Structure de la table `race`
--
-- Création : dim. 20 oct. 2024 à 16:43
--

DROP TABLE IF EXISTS `race`;
CREATE TABLE IF NOT EXISTS `race` (
  `race_id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`race_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONS POUR LA TABLE `race`:
--

--
-- Déchargement des données de la table `race`
--

INSERT INTO `race` (`race_id`, `label`) VALUES(5, 'Mammifères');
INSERT INTO `race` (`race_id`, `label`) VALUES(6, 'Oiseaux');
INSERT INTO `race` (`race_id`, `label`) VALUES(7, 'Reptiles');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--
-- Création : dim. 20 oct. 2024 à 20:49
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONS POUR LA TABLE `role`:
--

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`role_id`, `label`) VALUES(1, 'admin');
INSERT INTO `role` (`role_id`, `label`) VALUES(2, 'vétérinaire');
INSERT INTO `role` (`role_id`, `label`) VALUES(3, 'employé');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--
-- Création : dim. 20 oct. 2024 à 16:50
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONS POUR LA TABLE `service`:
--

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`service_id`, `name`, `description`) VALUES(7, 'Visite des habitats', 'Ce n\'est pas seulement une visite: c\'est un voyage immersif au cœur de la conservation de la faune. Vous aurez la chance de voir nos gardiens dévoués du zoo d\'Arcadia qui travaillent sans relâche en coulisses pour assurer le bien-être de nos animaux extraordinaires. ');
INSERT INTO `service` (`service_id`, `name`, `description`) VALUES(8, 'Visite du zoo en train', 'Explorez le zoo d\'Arcadia avec style grâce au service 5 étoiles à bord d\'un train ! Nos guides touristiques passionnés et compétents seront votre chauffeur, vous emmenant dans un voyage personnalisé autour de notre installation de classe mondiale de 110 acres. ');
INSERT INTO `service` (`service_id`, `name`, `description`) VALUES(9, 'Restauration', 'Nos restaurants, situés dans tout le zoo d\'Arcadia, satisfont une grande variété de goûts et offrent un menu complet de plats et boissons frais, chauds et froids. Vous trouverez toujours un endroit pour vous détendre et profiter de votre petit déjeuner, thé du matin, le déjeuner ou une collation rapide! ');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--
-- Création : dim. 20 oct. 2024 à 20:39
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONS POUR LA TABLE `users`:
--   `role_id`
--       `role` -> `role_id`
--

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nom`, `prenom`, `role_id`) VALUES(1, 'admin', 'admin123', 'Carlos', 'José', 1);
INSERT INTO `users` (`id`, `username`, `password`, `nom`, `prenom`, `role_id`) VALUES(2, 'employé', 'azerty123', 'John', 'Doe', 3);
INSERT INTO `users` (`id`, `username`, `password`, `nom`, `prenom`, `role_id`) VALUES(3, 'vétérinaire', 'azerty321', 'Wick', 'John', 2);

-- --------------------------------------------------------

--
-- Structure de la table `vet_report`
--
-- Création : dim. 20 oct. 2024 à 20:50
--

DROP TABLE IF EXISTS `vet_report`;
CREATE TABLE IF NOT EXISTS `vet_report` (
  `vet_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `detail` varchar(50) DEFAULT NULL,
  `vet_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`vet_report_id`),
  KEY `vet_id` (`vet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONS POUR LA TABLE `vet_report`:
--   `vet_id`
--       `role` -> `role_id`
--

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `animals`
--
ALTER TABLE `animals`
  ADD CONSTRAINT `animals_ibfk_1` FOREIGN KEY (`habitat_id`) REFERENCES `habitat` (`habitat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `animals_ibfk_2` FOREIGN KEY (`race_id`) REFERENCES `race` (`race_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `animals_ibfk_3` FOREIGN KEY (`state_id`) REFERENCES `vet_report` (`vet_report_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `vet_report`
--
ALTER TABLE `vet_report`
  ADD CONSTRAINT `vet_report_ibfk_1` FOREIGN KEY (`vet_id`) REFERENCES `role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
