-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 25 nov. 2025 à 13:08
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

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

CREATE TABLE `g_article` (
  `a_id` int NOT NULL,
  `a_reference` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Référence de l''article',
  `a_designation` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Référence du code barre',
  `a_marque` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Référence du code barre',
  `a_quantite` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `g_article`
--

INSERT INTO `g_article` (`a_id`, `a_reference`, `a_designation`, `a_marque`, `a_quantite`) VALUES
(1, 'KT0WFQA', 'Filtre pollen', 'MECAFILTER', 60),
(4, 'Q9DREJ6', 'Filtre à huile', 'MAN FILTER', 77),
(5, 'S0PAHZF', 'Filtre pollen', 'BOSCH', 149),
(6, 'BP5D3IW', 'Filtre pollen', 'PURFLUX', 35),
(7, 'W7FGJ2S', 'Filtre à huile', 'MAN FILTER', 18),
(8, 'DBAYMQE', 'Filtre à huile', 'BOSCH', 72),
(9, '3XTBQ0F', 'Filtre à carburant', 'BOSCH', 27),
(10, 'ZM3D8CY', 'Filtre à air', 'MECAFILTER', 21),
(11, 'VLX51C6', 'Filtre pollen', 'MAN FILTER', 14),
(12, '7I8BP13', 'Filtre à carburant', 'PURFLUX', 103),
(13, 'YPEWALU', 'Filtre à huile', 'MECAFILTER', 66),
(14, '958TEVW', 'Filtre à huile', 'PURFLUX', 65),
(15, 'BK9P3DX', 'Filtre pollen', 'PURFLUX', 38),
(16, '1HRM0Q5', 'Filtre à air', 'PURFLUX', 76),
(17, 'OET09UZ', 'Filtre à carburant', 'MECAFILTER', 49),
(18, 'Y13AT6N', 'Filtre à air', 'VALEO', 86),
(19, 'XW46AJP', 'Filtre à air', 'VALEO', 111),
(20, 'SFING8M', 'Filtre à huile', 'PURFLUX', 64),
(21, 'IJ9LETP', 'Filtre à carburant', 'PURFLUX', 50),
(22, 'QN12MF0', 'Filtre à huile', 'PURFLUX', 36),
(23, 'P86LDZM', 'Filtre à huile', 'MECAFILTER', 142),
(24, 'PFN8JCV', 'Filtre à carburant', 'VALEO', 15),
(25, 'NA0LC8V', 'Filtre à huile', 'MAN FILTER', 52),
(26, 'M2Y49OH', 'Filtre à air', 'MECAFILTER', 115),
(27, '6G5W7TE', 'Filtre pollen', 'MECAFILTER', 14),
(28, 'FODMYZ8', 'Filtre pollen', 'MECAFILTER', 21),
(29, 'RK6027A', 'Filtre à air', 'MECAFILTER', 96),
(30, 'REIHFAV', 'Filtre à air', 'VALEO', 110),
(31, 'B1IEUN5', 'Filtre pollen', 'MAN FILTER', 116),
(32, 'ATZ04QK', 'Filtre à carburant', 'VALEO', 82),
(33, 'SUQGXFE', 'Filtre à huile', 'PURFLUX', 39),
(34, 'GOW28RS', 'Filtre pollen', 'MAN FILTER', 101),
(35, 'EBYSVAF', 'Filtre à huile', 'BOSCH', 30),
(36, '12ZRBFY', 'Filtre à carburant', 'VALEO', 42),
(37, 'Z9MF857', 'Filtre à huile', 'BOSCH', 74),
(38, 'OU94KZJ', 'Filtre pollen', 'MECAFILTER', 45),
(39, '651OAYG', 'Filtre à carburant', 'PURFLUX', 70),
(40, 'Z580OU6', 'Filtre à huile', 'PURFLUX', 93),
(41, 'HFS3QJZ', 'Filtre pollen', 'PURFLUX', 143),
(42, 'I3BWHUD', 'Filtre pollen', 'VALEO', 116),
(43, 'I3SUFQH', 'Filtre pollen', 'VALEO', 67),
(44, 'J9OH2E4', 'Filtre à carburant', 'VALEO', 124),
(45, 'WS7P3UF', 'Filtre pollen', 'MAN FILTER', 93),
(46, 'PQ10675', 'Filtre à carburant', 'PURFLUX', 26),
(47, '9KHOINR', 'Filtre pollen', 'BOSCH', 110),
(48, 'PM5194Q', 'Filtre à huile', 'PURFLUX', 39),
(49, 'DNCT6QB', 'Filtre à carburant', 'BOSCH', 146),
(50, '473EL91', 'Filtre à carburant', 'VALEO', 150),
(51, 'YT24QJN', 'Filtre à carburant', 'VALEO', 147),
(52, 'NQEU9RV', 'Filtre à carburant', 'VALEO', 105),
(53, '646fg77j', 'filtre à air', 'MAN FILTER', 44),
(55, '646464646', 'filtre à air', 'VALEO', 25),
(57, '46464gghlld', 'Filtre à GO', 'BOSCH', 22);

-- --------------------------------------------------------

--
-- Structure de la table `g_voiture`
--

CREATE TABLE `g_voiture` (
  `v_id` int NOT NULL,
  `v_marque` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `v_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `v_energie` varchar(15) NOT NULL,
  `v_fk_article_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `g_voiture`
--

INSERT INTO `g_voiture` (`v_id`, `v_marque`, `v_type`, `v_energie`, `v_fk_article_id`) VALUES
(4, 'MERCEDES', 'A180', 'HYBRIDE', 4),
(5, 'TOYOTA', 'YARIS', 'ESSENCE', 5),
(6, 'TOYOTA', 'YARIS', 'DIESEL', 6),
(7, 'PEUGEOT', '308', 'DIESEL', 9),
(8, 'RENAULT', 'MEGANE', 'ESSENCE', 8),
(9, 'PEUGEOT', '308', 'ESSENCE', 9),
(10, 'MERCEDES', 'A180', 'ESSENCE', 10),
(11, 'PEUGEOT', '308', 'HYBRIDE', 11),
(12, 'FIAT', '500', 'ESSENCE', 12),
(13, 'FIAT', '500', 'ESSENCE', 13),
(14, 'PEUGEOT', '308', 'DIESEL', 14),
(15, 'MERCEDES', 'A180', 'ESSENCE', 15),
(16, 'FIAT', '500', 'HYBRIDE', 16),
(17, 'FIAT', '500', 'DIESEL', 17),
(18, 'MERCEDES', 'A180', 'DIESEL', 18),
(19, 'CITROEN', 'C3', 'ESSENCE', 19),
(20, 'PEUGEOT', '308', 'DIESEL', 20),
(21, 'FIAT', '500', 'ESSENCE', 21),
(22, 'CITROEN', 'C3', 'ESSENCE', 22),
(23, 'RENAULT', 'CLIO', 'DIESEL', 23),
(24, 'PEUGEOT', '308', 'ESSENCE', 24),
(25, 'FIAT', '500', 'HYBRIDE', 25),
(26, 'MERCEDES', 'A180', 'DIESEL', 26),
(27, 'FIAT', '500', 'DIESEL', 9),
(28, 'FIAT', '500', 'ESSENCE', 28),
(29, 'RENAULT', 'CLIO', 'DIESEL', 29),
(30, 'TOYOTA', 'YARIS', 'DIESEL', 30),
(31, 'TOYOTA', 'YARIS', 'DIESEL', 31),
(32, 'CITROEN', 'C3', 'DIESEL', 9),
(33, 'CITROEN', 'C3', 'ESSENCE', 33),
(34, 'TOYOTA', 'YARIS', 'HYBRIDE', 34),
(35, 'PEUGEOT', '308', 'HYBRIDE', 35),
(37, 'MERCEDES', 'A180', 'ESSENCE', 37),
(38, 'CITROEN', 'C3', 'DIESEL', 38),
(39, 'MERCEDES', 'A180', 'HYBRIDE', 39),
(40, 'TOYOTA', 'YARIS', 'ESSENCE', 40),
(41, 'FIAT', '500', 'ESSENCE', 41),
(42, 'FIAT', '500', 'ESSENCE', 42),
(43, 'RENAULT', 'CLIO', 'DIESEL', 43),
(44, 'TOYOTA', 'YARIS', 'ESSENCE', 44),
(45, 'PEUGEOT', '308', 'HYBRIDE', 45),
(46, 'CITROEN', 'C3', 'DIESEL', 46),
(47, 'RENAULT', 'CLIO', 'DIESEL', 47),
(48, 'CITROEN', 'C3', 'DIESEL', 48),
(49, 'MERCEDES', 'A180', 'HYBRIDE', 49),
(50, 'MERCEDES', 'A180', 'HYBRIDE', 50),
(53, 'PEUGEOT', '308', 'DIESEL', 4),
(54, 'RENAULT', 'CLIO', 'DIESEL', 5),
(55, 'MERCEDES', 'A180', 'DIESEL', 6),
(56, 'PEUGEOT', '308', 'HYBRIDE', 7),
(57, 'FIAT', '500', 'DIESEL', 8),
(58, 'CITROEN', 'C3', 'ESSENCE', 9),
(59, 'FIAT', '500', 'DIESEL', 10),
(60, 'PEUGEOT', '308', 'DIESEL', 11),
(61, 'PEUGEOT', '308', 'DIESEL', 12),
(62, 'RENAULT', 'CLIO', 'HYBRIDE', 13),
(63, 'RENAULT', 'CLIO', 'ESSENCE', 14),
(64, 'FIAT', '500', 'DIESEL', 15),
(65, 'TOYOTA', 'YARIS', 'HYBRIDE', 16),
(66, 'PEUGEOT', '308', 'DIESEL', 17),
(67, 'MERCEDES', 'A180', 'DIESEL', 18),
(68, 'PEUGEOT', '308', 'HYBRIDE', 19),
(69, 'CITROEN', 'C3', 'ESSENCE', 20),
(70, 'CITROEN', 'C3', 'DIESEL', 21),
(71, 'PEUGEOT', '308', 'HYBRIDE', 22),
(72, 'CITROEN', 'C3', 'DIESEL', 23),
(73, 'MERCEDES', 'A180', 'HYBRIDE', 24),
(74, 'MERCEDES', 'A180', 'HYBRIDE', 25),
(75, 'FIAT', '500', 'ESSENCE', 26),
(76, 'RENAULT', 'CLIO', 'ESSENCE', 27),
(77, 'MERCEDES', 'A180', 'DIESEL', 28),
(78, 'FIAT', '500', 'HYBRIDE', 29),
(79, 'FIAT', '500', 'HYBRIDE', 30),
(80, 'RENAULT', 'CLIO', 'HYBRIDE', 31),
(81, 'MERCEDES', 'A180', 'HYBRIDE', 32),
(82, 'PEUGEOT', '308', 'HYBRIDE', 33),
(83, 'TOYOTA', 'YARIS', 'DIESEL', 34),
(84, 'RENAULT', 'CLIO', 'HYBRIDE', 35),
(85, 'MERCEDES', 'A180', 'ESSENCE', 36),
(86, 'CITROEN', 'C3', 'ESSENCE', 37),
(87, 'CITROEN', 'C3', 'HYBRIDE', 38),
(88, 'FIAT', '500', 'HYBRIDE', 39),
(89, 'FIAT', '500', 'HYBRIDE', 40),
(90, 'PEUGEOT', '308', 'HYBRIDE', 41),
(91, 'MERCEDES', 'A180', 'ESSENCE', 42),
(92, 'TOYOTA', 'YARIS', 'DIESEL', 43),
(93, 'CITROEN', 'C3', 'DIESEL', 44),
(94, 'RENAULT', 'CLIO', 'DIESEL', 45),
(95, 'RENAULT', 'CLIO', 'ESSENCE', 46),
(96, 'MERCEDES', 'A180', 'DIESEL', 47),
(97, 'RENAULT', 'CLIO', 'DIESEL', 48),
(98, 'TOYOTA', 'YARIS', 'HYBRIDE', 49),
(99, 'PEUGEOT', '308', 'HYBRIDE', 50),
(100, 'CITROEN', 'C3', 'HYBRIDE', 51),
(103, 'RENAULT', 'CLIO ESTATE', 'ESSENCE', 9);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `g_article`
--
ALTER TABLE `g_article`
  ADD PRIMARY KEY (`a_id`);

--
-- Index pour la table `g_voiture`
--
ALTER TABLE `g_voiture`
  ADD PRIMARY KEY (`v_id`),
  ADD KEY `article_fk` (`v_fk_article_id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `g_voiture`
--
ALTER TABLE `g_voiture`
  ADD CONSTRAINT `article_fk` FOREIGN KEY (`v_fk_article_id`) REFERENCES `g_article` (`a_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
