CREATE TABLE voiture (
    id INT PRIMARY KEY,
    marque VARCHAR(50),
    type VARCHAR(50),
    energie VARCHAR(50),
);


CREATE TABLE article (
    id INT PRIMARY KEY,
    reference VARCHAR(50),
    type VARCHAR(50),
    marque VARCHAR(50),
    quantitee INT,
)