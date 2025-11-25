-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 25 nov. 2025 à 10:36
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
-- Structure de la table `g_article`
--

DROP TABLE IF EXISTS `g_article`;
CREATE TABLE IF NOT EXISTS `g_article` (
  `a_id` int DEFAULT NULL,
  `a_reference` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_marque` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_quantitee` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `g_article`
--

INSERT INTO `g_article` (`a_id`, `a_reference`, `a_type`, `a_marque`, `a_quantitee`) VALUES
(1, 'Renault', 'Pneu', '1H765J87', 0),
(1, '1H765J87', 'Essuie-glace', 'Renault', 1),
(2, '9KJ76H5', 'Pneu', 'Peugeot', 1),
(3, '76JH65K', 'Essuie-glace', 'Citroen', 1),
(4, '65KJ87H', 'Pneu', 'Ford', 1),
(5, 'JH76KJ8', 'Pneu', 'BMW', 1),
(6, '87H65KJ', 'Essuie-glace', 'Audi', 1),
(7, 'KJ87H65', 'Filtre à air', 'Mercedes', 1),
(8, 'H65KJ87', 'Filtre à air', 'Volkswagen', 1);

-- --------------------------------------------------------

--
-- Structure de la table `g_voiture`
--

DROP TABLE IF EXISTS `g_voiture`;
CREATE TABLE IF NOT EXISTS `g_voiture` (
  `v_id` int DEFAULT NULL,
  `v_marque` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_energie` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_fk_article_id` int DEFAULT NULL,
  KEY `article_fk` (`v_fk_article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `g_voiture`
--

INSERT INTO `g_voiture` (`v_id`, `v_marque`, `v_type`, `v_energie`, `v_fk_article_id`) VALUES
(1, 'Renault', 'SUV', 'Essence', 1),
(2, 'Peugeot', 'Berline', 'Diesel', 2),
(3, 'Citroen', 'Compacte', 'Essence', 3),
(4, 'Ford', 'Pickup', 'Diesel', 4),
(5, 'BMW', 'Coupé', 'Essence', 5),
(6, 'Audi', 'SUV', 'Diesel', 6),
(7, 'Mercedes', 'Berline', 'Essence', 7),
(8, 'Volkswagen', 'Compacte', 'Diesel', 8);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
