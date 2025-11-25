-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 25 nov. 2025 à 10:17
-- Version du serveur : 8.4.7
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `garage`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `a_id` int DEFAULT NULL,
  `a_reference` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_marque` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_quantitee` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`a_id`, `a_reference`, `a_type`, `a_marque`, `a_quantitee`) VALUES
(1, 'Renault', '1', '1H765J87', 0);
(2, 'Peugeot', '1', '9KJ76H5', 0);
(3, 'Citroen', '1', '76JH65K', 0);
(4, 'Ford', '1', '65KJ87H', 0);
(5, 'BMW', '1', 'JH76KJ8', 0);
(6, 'Audi', '1', '87H65KJ', 0);
(7, 'Mercedes', '1', 'KJ87H65', 0);
(8, 'Volkswagen', '1', 'H65KJ87', 0);

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

DROP TABLE IF EXISTS `voiture`;
CREATE TABLE IF NOT EXISTS `voiture` (
  `v_id` int DEFAULT NULL,
  `v_marque` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_energie` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_fk_article_id` int DEFAULT NULL,
  KEY `article_fk` (`v_fk_article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `voiture`
--

INSERT INTO `voiture` (`v_id`, `v_marque`, `v_type`, `v_energie`, `v_fk_article_id`) VALUES
(0, '1', '1', 'Renault', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
