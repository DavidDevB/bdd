CREATE TABLE g_voiture (
    v_id INT PRIMARY KEY,
    v_marque VARCHAR(50),
    v_type VARCHAR(50),
    v_energie VARCHAR(50),
    FOREIGN KEY (v_fk_article_id) REFERENCES article(id)
);


CREATE TABLE g_article (
    a_id INT PRIMARY KEY,
    a_reference VARCHAR(50),
    a_type VARCHAR(50),
    a_marque VARCHAR(50),
    a_quantitee INT,
)