ALTER TABLE g_ordres_de_reparation RENAME TO g_or;

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


DELETE FROM "g_article" WHERE a_id = 42

UPDATE "g_client" SET c_adresse = '123 Nouvelle Adresse, Ville, Pays' WHERE c_id = 7;
