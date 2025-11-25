
-- Structure de la table voiture

CREATE TABLE g_voiture (
    v_id INT PRIMARY KEY,
    v_marque VARCHAR(50) NOT NULL,
    v_type VARCHAR(50) NOT NULL,
    v_energie VARCHAR(50) NOT NULL,
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;


ALTER TABLE g_voiture ADD CONSTRAINT v_fk_article_id FOREIGN KEY (v_fk_article_id) REFERENCES g_article(a_id);

-- Structure de la table article

CREATE TABLE g_article (
    a_id INT PRIMARY KEY,
    a_reference VARCHAR(50) NOT NULL,
    a_type VARCHAR(50) NOT NULL,
    a_marque VARCHAR(50) NOT NULL,
    a_quantitee INT NOT NULL,
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;