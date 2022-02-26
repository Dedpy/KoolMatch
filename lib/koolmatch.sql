-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 26 fév. 2022 à 16:12
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `koolmatch`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(50) NOT NULL,
  `login_admin` varchar(20) NOT NULL,
  `password_admin` varchar(20) NOT NULL,
  `archive` int(8) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `login_admin`, `password_admin`, `archive`) VALUES
(1, 'marwen11', '66666', 1),
(2, 'marwen12', 'test12', 1),
(3, 'marwen13', 'test12', 0),
(6, 'admin22', '123456l', 0),
(7, 'adminP', '123456789', 0);

-- --------------------------------------------------------

--
-- Structure de la table `conversation`
--

CREATE TABLE `conversation` (
  `id_conversation` int(20) NOT NULL,
  `titre_conversation` varchar(20) NOT NULL,
  `id_user1` int(20) NOT NULL,
  `id_user2` int(20) NOT NULL,
  `archive` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `conversation`
--

INSERT INTO `conversation` (`id_conversation`, `titre_conversation`, `id_user1`, `id_user2`, `archive`) VALUES
(1, 'aa', 2, 3, 0),
(3, 'test', 2, 3, 0),
(4, 'test', 2, 3, 0),
(5, 'test', 2, 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE `evenement` (
  `id_event` int(20) NOT NULL,
  `nom_event` varchar(20) NOT NULL,
  `dd_event` date NOT NULL,
  `df_event` date NOT NULL,
  `theme_event` varchar(50) NOT NULL,
  `adresse_event` varchar(20) NOT NULL,
  `telephone` int(20) NOT NULL,
  `archive` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `gerant`
--

CREATE TABLE `gerant` (
  `id_gerant` int(20) NOT NULL,
  `nom_gerant` varchar(100) NOT NULL,
  `prenom_gerant` varchar(100) NOT NULL,
  `telephone_gerant` int(20) NOT NULL,
  `dd_abonnement` date NOT NULL,
  `df_abonnement` date NOT NULL,
  `archive` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `gerant`
--

INSERT INTO `gerant` (`id_gerant`, `nom_gerant`, `prenom_gerant`, `telephone_gerant`, `dd_abonnement`, `df_abonnement`, `archive`) VALUES
(1, 'test', 'test', 197, '2022-02-14', '2022-05-14', 1),
(2, 'test', 'test', 55423984, '2022-02-14', '2022-05-14', 0),
(6, 'test', 'test', 55423984, '2022-02-14', '2022-05-14', 0),
(8, 'test', 'test', 55423984, '2022-02-14', '2022-05-14', 0),
(9, 'test', 'test', 55423984, '2022-02-14', '2022-05-14', 0),
(10, 'test', 'test', 55423984, '2022-02-14', '2022-05-14', 0),
(11, 'test', 'test', 55423984, '2022-02-14', '2022-05-14', 0),
(12, 'test', 'test', 55423984, '2022-02-14', '2022-05-14', 0),
(14, 'test', 'test', 55423984, '2022-02-14', '2022-05-14', 1),
(16, 'test5', 'test6', 22565454, '2022-06-01', '2022-09-01', 1),
(17, 'test27', 'test16', 22565454, '2022-06-01', '2022-09-01', 1),
(18, 'test27', 'test16', 22565454, '2022-06-01', '2022-09-01', 1),
(19, 'test77', 'test16', 22565454, '2022-06-01', '2022-09-01', 1);

-- --------------------------------------------------------

--
-- Structure de la table `interaction`
--

CREATE TABLE `interaction` (
  `id_interaction` int(20) NOT NULL,
  `type_interaction` varchar(20) NOT NULL,
  `date_interaction` date NOT NULL,
  `id_user1` int(11) NOT NULL,
  `id_user2` int(11) NOT NULL,
  `archive` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `invitation`
--

CREATE TABLE `invitation` (
  `id_invitation` int(20) NOT NULL,
  `id_event` int(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `archive` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `jeu`
--

CREATE TABLE `jeu` (
  `id_jeu` int(20) NOT NULL,
  `score_jeu` int(20) NOT NULL,
  `id_quiz` int(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `archive` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jeu`
--

INSERT INTO `jeu` (`id_jeu`, `score_jeu`, `id_quiz`, `id_user`, `archive`) VALUES
(1, 8, 6, 1, 0),
(2, 8, 6, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `matching`
--

CREATE TABLE `matching` (
  `id_match` int(20) NOT NULL,
  `id_user1` int(20) NOT NULL,
  `id_user2` int(20) NOT NULL,
  `date_matching` date NOT NULL,
  `archive` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `matching`
--

INSERT INTO `matching` (`id_match`, `id_user1`, `id_user2`, `date_matching`, `archive`) VALUES
(1, 1, 2, '2019-09-20', 0);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id_message` int(20) NOT NULL,
  `msg_message` varchar(100) NOT NULL,
  `date_message` date NOT NULL,
  `id_conversation` int(20) NOT NULL,
  `archive` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `quiz`
--

CREATE TABLE `quiz` (
  `id_quiz` int(11) NOT NULL,
  `id_jeu` int(11) NOT NULL,
  `Q1` text NOT NULL,
  `rc1` text NOT NULL,
  `rf11` text NOT NULL,
  `rf12` text NOT NULL,
  `rf13` text NOT NULL,
  `Q2` text NOT NULL,
  `rc2` text NOT NULL,
  `rf21` text NOT NULL,
  `rf22` text NOT NULL,
  `rf23` text NOT NULL,
  `Q3` text NOT NULL,
  `rc3` text NOT NULL,
  `rf31` text NOT NULL,
  `rf32` text NOT NULL,
  `rf33` text NOT NULL,
  `archive` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `quiz`
--

INSERT INTO `quiz` (`id_quiz`, `id_jeu`, `Q1`, `rc1`, `rf11`, `rf12`, `rf13`, `Q2`, `rc2`, `rf21`, `rf22`, `rf23`, `Q3`, `rc3`, `rf31`, `rf32`, `rf33`, `archive`) VALUES
(1, 6, 'q1', 'rc1', 'rf11', 'rf12', 'rf13', 'q2', 'rc2', 'rf21', 'rf22', 'rf23', 'q3', 'rc3', 'rf31', 'rf32', 'rf33', 0);

-- --------------------------------------------------------

--
-- Structure de la table `recette`
--

CREATE TABLE `recette` (
  `id_recette` int(20) NOT NULL,
  `nom_recette` varchar(20) NOT NULL,
  `photo_recette` varchar(50) NOT NULL,
  `description_recette` varchar(50) NOT NULL,
  `categorie_recette` varchar(20) NOT NULL,
  `duree_recette` int(20) NOT NULL,
  `archive` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `recette`
--

INSERT INTO `recette` (`id_recette`, `nom_recette`, `photo_recette`, `description_recette`, `categorie_recette`, `duree_recette`, `archive`) VALUES
(1, 'omlette', 'photo.jpg', 'bnina', 'Petit dej', 0, 0),
(2, 'aa', 'bz', 'description_recette', 'categorie_recette', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id_reservation` int(20) NOT NULL,
  `date_reservation` date NOT NULL,
  `nbPlace_reservation` int(20) NOT NULL,
  `id_restaurant` int(20) NOT NULL,
  `id_user` int(20) NOT NULL,
  `archive` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `restaurant`
--

CREATE TABLE `restaurant` (
  `id_restaurant` int(20) NOT NULL,
  `nom_restaurant` varchar(20) NOT NULL,
  `adresse_restaurant` varchar(50) NOT NULL,
  `telephone_restaurant` int(20) NOT NULL,
  `siteweb_restaurant` varchar(50) NOT NULL,
  `specialite_restaurant` varchar(20) NOT NULL,
  `id_gerant` int(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `nb_placeResto` int(11) NOT NULL,
  `image_structure_resturant` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `archive` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(20) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `login_user` varchar(20) NOT NULL,
  `password_user` varchar(20) NOT NULL,
  `nom_user` varchar(20) NOT NULL,
  `prenom_user` varchar(20) NOT NULL,
  `dateNaissance_user` date NOT NULL,
  `sexe_user` varchar(20) NOT NULL,
  `telephone_user` int(20) NOT NULL,
  `photo_user` varchar(100) NOT NULL,
  `description_user` varchar(100) NOT NULL,
  `maxDistance_user` int(20) NOT NULL,
  `preferredMinAge_user` int(20) NOT NULL,
  `preferredMaxAge_user` int(20) NOT NULL,
  `adresse_user` varchar(20) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `Interet_user` int(20) NOT NULL,
  `archive` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `email_user`, `login_user`, `password_user`, `nom_user`, `prenom_user`, `dateNaissance_user`, `sexe_user`, `telephone_user`, `photo_user`, `description_user`, `maxDistance_user`, `preferredMinAge_user`, `preferredMaxAge_user`, `adresse_user`, `latitude`, `longitude`, `Interet_user`, `archive`) VALUES
(1, 'yakoubi.marwen@esprit.tn', 'marwen', '1234', 'marwen', 'yakoubi', '1998-05-14', 'homme', 29163283, 'photo.jpeg', 'I love lablebi', 50, 20, 25, 'Ariana Essoughra', 36.90138, 10.19012, 21412, 0),
(2, 'wassim.benromdhane.1@esprit.tn', 'wassim', '1234', 'wassim', 'benromdhane', '1998-05-14', 'femme', 94366666, 'photo.png', 'I love sushi', 20, 20, 28, 'Soukra', 36.87427, 10.27263, 22211, 0),
(3, 'matchkool@gmail.com', 'kool', '1234', 'marwen', 'yakoubi', '1998-05-14', 'homme', 29163283, 'photo.jpeg', 'I love hargma', 10, 20, 28, 'Ariana', 36.85858, 10.18436, 21422, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `conversation`
--
ALTER TABLE `conversation`
  ADD PRIMARY KEY (`id_conversation`);

--
-- Index pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`id_event`);

--
-- Index pour la table `gerant`
--
ALTER TABLE `gerant`
  ADD PRIMARY KEY (`id_gerant`);

--
-- Index pour la table `interaction`
--
ALTER TABLE `interaction`
  ADD PRIMARY KEY (`id_interaction`);

--
-- Index pour la table `invitation`
--
ALTER TABLE `invitation`
  ADD PRIMARY KEY (`id_invitation`);

--
-- Index pour la table `jeu`
--
ALTER TABLE `jeu`
  ADD PRIMARY KEY (`id_jeu`);

--
-- Index pour la table `matching`
--
ALTER TABLE `matching`
  ADD PRIMARY KEY (`id_match`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_message`);

--
-- Index pour la table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id_quiz`);

--
-- Index pour la table `recette`
--
ALTER TABLE `recette`
  ADD PRIMARY KEY (`id_recette`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id_reservation`);

--
-- Index pour la table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id_restaurant`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `conversation`
--
ALTER TABLE `conversation`
  MODIFY `id_conversation` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `id_event` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gerant`
--
ALTER TABLE `gerant`
  MODIFY `id_gerant` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `interaction`
--
ALTER TABLE `interaction`
  MODIFY `id_interaction` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `invitation`
--
ALTER TABLE `invitation`
  MODIFY `id_invitation` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jeu`
--
ALTER TABLE `jeu`
  MODIFY `id_jeu` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `matching`
--
ALTER TABLE `matching`
  MODIFY `id_match` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id_message` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id_quiz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `recette`
--
ALTER TABLE `recette`
  MODIFY `id_recette` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id_reservation` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id_restaurant` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
