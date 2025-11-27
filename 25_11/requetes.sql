-- Renommer la table g_ordres_de_reparation en g_or
ALTER TABLE g_ordres_de_reparation RENAME TO g_or;

-- Renommer la colonne ordre_reparation_id en or_id
ALTER TABLE g_or RENAME COLUMN ordre_reparation_id TO or_id;


-- Articles compatibles avec les véhicules du catalogue
SELECT 
    a.a_designation AS Article,
    a.a_marque AS Marque_Article,
    cv.v_marque AS Marque_Vehicule,
    cv.v_type AS Type_Vehicule
FROM g_article a
INNER JOIN g_article_vehicule av ON a.a_id = av.a_id
INNER JOIN g_catalogue_vehicule cv ON av.v_id = cv.v_id;



-- Tous les articles, même ceux sans compatibilité véhicule
SELECT 
    a.a_designation AS Article,
    a.a_quantite AS Stock,
    cv.v_marque AS Compatible_Avec,
    cv.v_type AS Type_Vehicule
FROM g_article a
LEFT JOIN g_article_vehicule av ON a.a_id = av.a_id
LEFT JOIN g_catalogue_vehicule cv ON av.v_id = cv.v_id;

-- Supprimer l'article avec l'ID 42
DELETE FROM "g_article" WHERE a_id = 42

-- Mettre à jour l'adresse du client avec l'ID 7
UPDATE "g_client" SET c_adresse = '123 Nouvelle Adresse, Ville, Pays' WHERE c_id = 7;


-- Selectionner tous les articles de la marque 'MECAFILTER'
SELECT * 
FROM g_article 
WHERE a_marque = 'MECAFILTER';

-- Compter le nombre total d'articles de la marque 'MECAFILTER'
SELECT SUM(a_quantite) AS Total_Articles
FROM g_article
WHERE a_marque = "MECAFILTER";


-- Compter le nombre total d'articles de la marque 'MECAFILTER' et de la désignation 'Filtre à air'
SELECT SUM(a_quantite) AS Total_Articles
FROM g_article
WHERE a_designation = "Filtre à air" AND a_marque = "MECAFILTER";


-- Compter le nombre d'articles par marque ayant une quantité supérieure à 1
SELECT a_marque, COUNT(a_quantite) AS quantités
FROM g_article
GROUP BY a_designation
HAVING COUNT(a_quantite) > 1;