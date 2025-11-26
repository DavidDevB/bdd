DROP TABLE IF EXISTS `g_article`;
CREATE TABLE IF NOT EXISTS `g_article` (
  `a_id` int NOT NULL AUTO_INCREMENT,
  `a_reference` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_marque` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_quantite` int DEFAULT NULL,
  `a_designation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_prix` float DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `g_article_vehicule`;
CREATE TABLE IF NOT EXISTS `g_article_vehicule` (
  `a_id` int NOT NULL,
  `v_id` int NOT NULL,
  PRIMARY KEY (`a_id`,`v_id`),
  KEY `v_id` (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


ALTER TABLE `g_article_vehicule`
  ADD CONSTRAINT `g_article_vehicule_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `g_article` (`a_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `g_article_vehicule_ibfk_2` FOREIGN KEY (`v_id`) REFERENCES `g_catalogue_vehicule` (`v_id`) ON DELETE CASCADE ON UPDATE CASCADE;



DROP TABLE IF EXISTS `g_catalogue_vehicule`;
CREATE TABLE IF NOT EXISTS `g_catalogue_vehicule` (
  `v_id` int NOT NULL AUTO_INCREMENT,
  `v_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_energie` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_marque` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `g_client`;
CREATE TABLE IF NOT EXISTS `g_client` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_addresse` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_telephone` int NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `g_main_d_oeuvre`;
CREATE TABLE IF NOT EXISTS `g_main_d_oeuvre` (
  `mo_id` int NOT NULL AUTO_INCREMENT,
  `mo_tarif_horaire` float DEFAULT NULL,
  PRIMARY KEY (`mo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `g_or`;
CREATE TABLE IF NOT EXISTS `g_or` (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `mo_id` int NOT NULL,
  `v_id` int DEFAULT NULL,
  PRIMARY KEY (`o_id`),
  KEY `fk_main_d_oeuvre` (`mo_id`),
  KEY `fk_vehicule` (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


ALTER TABLE `g_or`
  ADD CONSTRAINT `fk_main_d_oeuvre` FOREIGN KEY (`mo_id`) REFERENCES `g_main_d_oeuvre` (`mo_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vehicule` FOREIGN KEY (`v_id`) REFERENCES `g_vehicule` (`v_id`) ON UPDATE CASCADE;


DROP TABLE IF EXISTS `g_or_article`;
CREATE TABLE IF NOT EXISTS `g_or_article` (
  `ora_id` int NOT NULL AUTO_INCREMENT,
  `ora_quantite` int DEFAULT NULL,
  `ora_montant_a` float DEFAULT NULL,
  `a_id` int DEFAULT NULL,
  `or_id` int DEFAULT NULL,
  PRIMARY KEY (`ora_id`),
  KEY `fk_article` (`a_id`),
  KEY `fk_or` (`or_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


ALTER TABLE `g_or_article`
  ADD CONSTRAINT `fk_article` FOREIGN KEY (`a_id`) REFERENCES `g_article` (`a_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_or` FOREIGN KEY (`or_id`) REFERENCES `g_or` (`o_id`) ON UPDATE CASCADE;


DROP TABLE IF EXISTS `g_vehicule`;
CREATE TABLE IF NOT EXISTS `g_vehicule` (
  `v_id` int NOT NULL AUTO_INCREMENT,
  `v_marque` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_energie` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv_id` int DEFAULT NULL,
  `c_id` int DEFAULT NULL,
  PRIMARY KEY (`v_id`),
  KEY `fk_catalogue_vehicule` (`cv_id`),
  KEY `fk_client` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


ALTER TABLE `g_vehicule`
  ADD CONSTRAINT `fk_catalogue_vehicule` FOREIGN KEY (`cv_id`) REFERENCES `g_catalogue_vehicule` (`v_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_client` FOREIGN KEY (`c_id`) REFERENCES `g_client` (`c_id`) ON UPDATE CASCADE;