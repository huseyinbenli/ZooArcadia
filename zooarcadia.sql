-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 20 jan. 2025 à 11:02
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

-- --------------------------------------------------------

--
-- Structure de la table `animals`
--

CREATE TABLE `animals` (
  `animal_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `habitat_id` int(11) DEFAULT NULL,
  `diet` varchar(50) NOT NULL,
  `race_id` int(11) NOT NULL,
  `images` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `animals`
--

INSERT INTO `animals` (`animal_id`, `name`, `state_id`, `habitat_id`, `diet`, `race_id`, `images`) VALUES
(2, 'Alligator - American', NULL, 9, 'Carnivore', 7, NULL),
(3, 'Anaconda - Vert', NULL, 9, 'Carnivore', 7, NULL),
(4, 'Alligator - American', NULL, 9, 'Carnivore', 7, NULL),
(5, 'Boa - Constrictor', NULL, 9, 'Carnivore', 7, NULL),
(6, 'Brolga', NULL, 6, 'Omnivore', 6, NULL),
(7, 'Casoar', NULL, 6, 'Frugivore', 6, NULL),
(8, 'Guépard', NULL, 7, 'Carnivore', 5, NULL),
(9, 'Cacatoés', NULL, 6, 'Herbivore', 6, NULL),
(10, 'Grand Carmoran', NULL, 6, 'Carnivore', 6, NULL),
(11, 'Carmoran Pie', NULL, 6, 'Carnivore', 6, NULL),
(12, 'Crocodile de Johnston', NULL, 9, 'Carnivore', 7, NULL),
(13, 'Crocodile Marin', NULL, 9, 'Carnivore', 7, NULL),
(14, 'Œdicnème Bridé', NULL, 6, 'Carnivore', 6, NULL),
(15, 'Dingo', NULL, 8, 'Carnivore', 5, NULL),
(16, 'Géopélie à nuque rousse', NULL, 6, 'Herbivore', 6, NULL),
(17, 'Colombine turvert', NULL, 6, 'Herbivore', 6, NULL),
(18, 'Ptilope à diadème', NULL, 6, 'Frugivore', 6, NULL),
(19, 'Pogona', NULL, 9, 'Omnivore', 7, NULL),
(20, 'Dragon de Komodo', NULL, 9, 'Carnivore', 7, NULL),
(21, 'Tadorne radjah', NULL, 6, 'Omnivore', 6, NULL),
(22, 'Aigle d\'Australie', NULL, 6, 'Carnivore', 6, NULL),
(23, 'Échidné à nez court', NULL, 8, 'Carnivore', 5, NULL),
(24, 'Éléphant de Sumatra', NULL, 7, 'Herbivore', 5, NULL),
(25, 'Émeu d\'Australie', NULL, 6, 'Omnivore', 6, NULL),
(26, 'Capucin donacole', NULL, 6, 'Omnivore', 6, NULL),
(27, 'Monstre de Gila', NULL, 9, 'Carnivore', 7, NULL),
(28, 'Girafe', NULL, 7, 'Herbivore', 5, NULL),
(29, 'Pintade de Numidie', NULL, 6, 'Omnivore', 6, NULL),
(30, 'Ibis falcinelle', NULL, 6, 'Carnivore', 6, NULL),
(31, 'Brachylophus vitiensis', NULL, 9, 'Omnivore', 7, NULL),
(32, 'Cyclura cornuta', NULL, 9, 'Omnivore', 7, NULL),
(33, 'Kangourou géant', NULL, 8, 'Herbivore', 5, NULL),
(34, 'Kangourou roux', NULL, 8, 'Herbivore', 5, NULL),
(35, 'Milan sacré', NULL, 6, 'Carnivore', 6, NULL),
(36, 'Koala', NULL, 8, 'Herbivore', 5, NULL),
(37, 'Lémur catta', NULL, 8, 'Herbivore', 5, NULL),
(38, 'Loriquet arc-en-ciel', NULL, 6, 'Omnivore', 6, NULL),
(39, 'Loriquet à col rouge', NULL, 6, 'Omnivore', 6, NULL),
(40, 'Ara bleu', NULL, 6, 'Herbivore', 6, NULL),
(41, 'Ara chloroptère', NULL, 6, 'Herbivore', 6, NULL),
(42, 'Suricate', NULL, 7, 'Carnivore', 5, NULL),
(43, 'Loutre cendrée', NULL, 8, 'Carnivore', 5, NULL),
(44, 'Ninoxe aboyeuse', NULL, 6, 'Carnivore', 6, NULL),
(45, 'Eclectus', NULL, 6, 'Herbivore', 6, NULL),
(46, 'Carpophage argenté', NULL, 6, 'Herbivore', 6, NULL),
(47, 'Pigeon leucomèle', NULL, 6, 'Herbivore', 6, NULL),
(48, 'Colombine wonga', NULL, 6, 'Herbivore', 6, NULL),
(49, 'Brève versicolore', NULL, 6, 'Omnivore', 6, NULL),
(50, 'Python à tête noire', NULL, 9, 'Carnivore', 7, NULL),
(51, 'Python birman', NULL, 9, 'Carnivore', 7, NULL),
(52, 'Python tapis', NULL, 9, 'Carnivore', 7, NULL),
(53, 'Simalia kinghorni', NULL, 9, 'Carnivore', 7, NULL),
(54, 'Python d\'eau', NULL, 9, 'Carnivore', 7, NULL),
(55, 'Python de Woma', NULL, 9, 'Carnivore', 7, NULL),
(56, 'Quokka', NULL, 8, 'Herbivore', 5, NULL),
(57, 'Panda roux', NULL, 8, 'Omnivore', 5, NULL),
(58, 'Rhinocéros blanc du Sud', NULL, 7, 'Herbivore', 5, NULL),
(59, 'Egernia cunninghami', NULL, 9, 'Herbivore', 7, NULL),
(60, 'Taïpan côtier', NULL, 9, 'Carnivore', 7, NULL),
(61, 'Serpent des blés', NULL, 9, 'Carnivore', 7, NULL),
(62, 'Vipère de la mort', NULL, 9, 'Carnivore', 7, NULL),
(63, 'Crotale diamantin', NULL, 9, 'Carnivore', 7, NULL),
(64, 'Taïpan du désert', NULL, 9, 'Carnivore', 7, NULL),
(65, 'Serpent de la Mulga', NULL, 9, 'Carnivore', 7, NULL),
(66, 'Cobra royal', NULL, 9, 'Carnivore', 7, NULL),
(67, 'Serpent noir à ventre rouge', NULL, 9, 'Carnivore', 7, NULL),
(68, 'jabiru asiatique', NULL, 6, 'Carnivore', 6, NULL),
(69, 'Diable de Tasmanie', NULL, 8, 'Carnivore', 5, NULL),
(70, 'Tigre de Sumatra', NULL, 8, 'Carnivore', 5, NULL),
(71, 'Serpent-tigre', NULL, 9, 'Carnivore', 7, NULL),
(72, 'Tortue géante des Seychelles', NULL, 9, 'Herbivore', 7, NULL),
(73, 'Tortue étoilée', NULL, 9, 'Herbivore', 7, NULL),
(74, 'Elseya irwini', NULL, 9, 'Omnivore', 7, NULL),
(75, 'Wallaby à cou rouge', NULL, 8, 'Herbivore', 5, NULL),
(76, 'Wallaby bicolore', NULL, 8, 'Herbivore', 5, NULL),
(77, 'Wombat commun', NULL, 8, 'Herbivore', 5, NULL),
(78, 'Wombat à nez poilu du Sud', NULL, 8, 'Herbivore', 5, NULL),
(79, 'Zèbre', NULL, 7, 'Herbivore', 5, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `pseudo` varchar(50) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `isVisible` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `habitat`
--

CREATE TABLE `habitat` (
  `habitat_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `habitat`
--

INSERT INTO `habitat` (`habitat_id`, `name`, `description`, `image_id`) VALUES
(6, 'Rainforest Aviary', 'Abritant de nombreux animaux à plumes du zoo d\'Arcadia,le jardin des oiseaux  offre un havre de paix et de verdureà plus de 170 oiseaux de plus de 19 espèces différentes. Initialement connu sous le nom de Grace Bird Garden,le Rainforest Aviary a été rénové et officiellement\r\nrenommé pour offrir un tout nouveau foyer à ces magnifiques animaux.', 0),
(7, 'Africain Safari Parc', 'Couvrant 4,5 hectares, la biozone Afrique est la plus étendue du parc.Elle abrite de grands mammifères tels que des rhinocéros blancs (Ceratotherium simum),des zèbres de Grévy (Equus grevyi), des lions d\'Afrique de l\'ouest (Panthera leo).', 0),
(8, 'Bush Australien', 'Vivez une aventure australienne dans la brousse sauvage de l\'Australie. Voici quelques exemples de koalas du sud, de quokkas et de potoroos à long nez, d\'émeus, de wallabies, de wombats, de kangourous et de toute une gamme d\'oiseaux indigènes, dont le Coq à queue rouge,les perroquets, les pteridons et bien plus encore.', 0),
(9, 'Village de Reptiles', 'Cet espace dédié aux serpents et lézards a été créé en 2011.Le village des reptiles regroupe des pythons royaux, des pythons molures,des boas constricteurs, des iguanes, des téjus… De nombreux panneaux sont disposés dans le village des reptiles qui informent aussi bien sur l\'anatomie\r\n des serpents', 0);

-- --------------------------------------------------------

--
-- Structure de la table `race`
--

CREATE TABLE `race` (
  `race_id` int(11) NOT NULL,
  `label` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `race`
--

INSERT INTO `race` (`race_id`, `label`) VALUES
(5, 'Mammifères'),
(6, 'Oiseaux'),
(7, 'Reptiles');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `label` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`role_id`, `label`) VALUES
(1, 'admin'),
(2, 'vétérinaire'),
(3, 'employé');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`service_id`, `name`, `description`) VALUES
(7, 'Visite des habitats', 'Ce n\'est pas seulement une visite: c\'est un voyage immersif au cœur de la conservation de la faune. Vous aurez la chance de voir nos gardiens dévoués du zoo d\'Arcadia qui travaillent sans relâche en coulisses pour assurer le bien-être de nos animaux extraordinaires. '),
(8, 'Visite du zoo en train', 'Explorez le zoo d\'Arcadia avec style grâce au service 5 étoiles à bord d\'un train ! Nos guides touristiques passionnés et compétents seront votre chauffeur, vous emmenant dans un voyage personnalisé autour de notre installation de classe mondiale de 110 acres. '),
(9, 'Restauration', 'Nos restaurants, situés dans tout le zoo d\'Arcadia, satisfont une grande variété de goûts et offrent un menu complet de plats et boissons frais, chauds et froids. Vous trouverez toujours un endroit pour vous détendre et profiter de votre petit déjeuner, thé du matin, le déjeuner ou une collation rapide! ');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nom`, `prenom`, `role_id`) VALUES
(1, 'admin', 'admin123', 'Carlos', 'José', 1),
(2, 'employé', 'azerty123', 'John', 'Doe', 3),
(3, 'vétérinaire', 'azerty321', 'Wick', 'John', 2);

-- --------------------------------------------------------

--
-- Structure de la table `vet_report`
--

CREATE TABLE `vet_report` (
  `vet_report_id` int(11) NOT NULL,
  `detail` varchar(50) DEFAULT NULL,
  `vet_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`animal_id`),
  ADD KEY `race_id` (`race_id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `habitat_id` (`habitat_id`);

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `habitat`
--
ALTER TABLE `habitat`
  ADD PRIMARY KEY (`habitat_id`);

--
-- Index pour la table `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`race_id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `role_id` (`role_id`);

--
-- Index pour la table `vet_report`
--
ALTER TABLE `vet_report`
  ADD PRIMARY KEY (`vet_report_id`),
  ADD KEY `vet_id` (`vet_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `animals`
--
ALTER TABLE `animals`
  MODIFY `animal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `habitat`
--
ALTER TABLE `habitat`
  MODIFY `habitat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `race`
--
ALTER TABLE `race`
  MODIFY `race_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `vet_report`
--
ALTER TABLE `vet_report`
  MODIFY `vet_report_id` int(11) NOT NULL AUTO_INCREMENT;

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
