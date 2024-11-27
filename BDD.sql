DROP DATABASE IF EXISTS siteecommerce;
CREATE DATABASE siteecommerce;
USE siteecommerce;

CREATE TABLE Client (
    id_client BIGINT NOT NULL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    mdp VARCHAR(100) NOT NULL,
    telephone BIGINT NOT NULL
);

CREATE TABLE Adresse (
    id_adresse BIGINT NOT NULL PRIMARY KEY,
    adresse VARCHAR(255) NOT NULL,
    ville VARCHAR(100) NOT NULL,
    pays VARCHAR(100) NOT NULL
);

CREATE TABLE Client_Adresse (
    id_client BIGINT NOT NULL,
    id_adres BIGINT NOT NULL,
    PRIMARY KEY (id_client, id_adresse),
    FOREIGN KEY (id_client) REFERENCES Client(id_client),
    FOREIGN KEY (id_adresse) REFERENCES Adresse(id_adresse)
);

CREATE TABLE Avis (
    id_avis BIGINT NOT NULL PRIMARY KEY,
    etoile BIGINT NOT NULL,
    commentaire TEXT NOT NULL
);

CREATE TABLE Produit (
    id_produit BIGINT NOT NULL PRIMARY KEY,
    description TEXT NOT NULL,
    name VARCHAR(100) NOT NULL,
    prix FLOAT NOT NULL,
    stock BIGINT NOT NULL
);

CREATE TABLE Avls_Produit (
    id_avis BIGINT NOT NULL,
    id_produit BIGINT NOT NULL,
    PRIMARY KEY (id_avis, id_produit),
    FOREIGN KEY (id_avis) REFERENCES Avis(id_avis),
    FOREIGN KEY (id_produit) REFERENCES Produit(id_produit)
);

CREATE TABLE Categorie (
    id_categorie BIGINT NOT NULL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE Produit_Categorie (
    id_produBIGINTBIGINT NOT NULL,
    id_categorie BIGINT NOT NULL,
    PRIMARY KEY (id_produit, id_categorie),
    FOREIGN KEY (id_produit) REFERENCES Produit(id_produit),
    FOREIGN KEY (id_categorie) REFERENCES Categorie(id_categorie)
);

CREATE TABLE Client_Avis (
    id_client BIGINT NOT NULL,
    id_avis BIGINT NOT NULL,
    PRIMARY KEY (id_client, id_avis),
    FOREIGN KEY (id_client) REFERENCES Client(id_client),
    FOREIGN KEY (id_avis) REFERENCES Avis(id_avis)
);

INSERT INTO Client (id_client, nom, email, mdp, telephone) VALUES
(1, 'Esteban', 'esteban@icloud.com', 'azertyui', 0669260379),
(2, 'Jordi', 'jordi@gmail.com', '12345678', 0714625952);

INSERT INTO Adresse (id_adresse, adresse, ville, pays) VALUES
(1, '10 rue de Paris', 'Paris', 'France'),
(2, '20 avenue de Lyon', 'Lyon', 'France');

INSERT INTO Produit (id_produit, description, name, prix, stock) VALUES
(1, 'Ordinateur portable 15 pouces', 'Laptop X1', 899.99, 50),
(2, 'Smartphone Android haut de gamme', 'Phone Pro Max', 1199.99, 30);

INSERT INTO Categorie (id_categorie, nom, description) VALUES
(1, 'Électronique', 'Appareils électroniques et gadgets'),
(2, 'Informatique', 'Produits pour ordinateurs et accessoires');

INSERT INTO Avis (id_avis, etoile, commentaire) VALUES
(1, 5, 'Excellent produit, très satisfait'),
(2, 4, 'Bon produit mais un peu cher');

SELECT * FROM Produit;
SELECT * FROM Adresse;
SELECT * FROM Client;
SELECT * FROM Avis;
SELECT * FROM Categorie;
