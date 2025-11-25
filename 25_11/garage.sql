
-- Structure de la table voiture

CREATE TABLE g_voiture (
    v_id INT PRIMARY KEY,
    v_marque VARCHAR(50) NOT NULL,
    v_type VARCHAR(50) NOT NULL,
    v_energie VARCHAR(50) NOT NULL,
    v_fk_article_id INT,
    FOREIGN KEY (v_fk_article_id) REFERENCES article(id)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;


-- Structure de la table article

CREATE TABLE g_article CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci(
    a_id INT PRIMARY KEY,
    a_reference VARCHAR(50) NOT NULL,
    a_type VARCHAR(50) NOT NULL,
    a_marque VARCHAR(50) NOT NULL,
    a_quantitee INT NOT NULL,
)