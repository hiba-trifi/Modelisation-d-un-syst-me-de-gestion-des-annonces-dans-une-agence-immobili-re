CREATE DATABASE gestion_immobilier(
CREATE TABLE Client(
   Id_cl INT,
   Nom_cl VARCHAR(50),
   Prenom_cl VARCHAR(50),
   Email_cl VARCHAR(100),
   Password VARCHAR(100),
   Num_Tel VARCHAR(20),
   PRIMARY KEY(Id_cl)
);

CREATE TABLE Categorie(
   Id_cat INT,
   Nom_cat VARCHAR(50),
   PRIMARY KEY(Id_cat)
);
CREATE TABLE Type(
   Id_tp INT,
   Titre_tp VARCHAR(50),
   PRIMARY KEY(Id_tp)
);

CREATE TABLE Annonce(
   Id_ac INT,
   Titre VARCHAR(50),
   Prix DOUBLE,
   Date_pub DATE,
   Date_mod DATE,
   Adresse VARCHAR(500),
   Id_tp INT NOT NULL,
   Id_cat INT NOT NULL,
   Id_cl INT NOT NULL,
   PRIMARY KEY(Id_ac),
   FOREIGN KEY(Id_tp) REFERENCES Type(Id_tp),
   FOREIGN KEY(Id_cat) REFERENCES Categorie(Id_cat),
   FOREIGN KEY(Id_cl) REFERENCES Client(Id_cl)
);

CREATE TABLE Image(
   Id_img INT,
   Titre_img VARCHAR(500),
   Img_Principale BOOLEAN,
   Id_ac INT NOT NULL,
   PRIMARY KEY(Id_img),
   FOREIGN KEY(Id_ac) REFERENCES Annonce(Id_ac)
);
)


--  insert into client
INSERT INTO Client (Id_cl, Nom_cl, Prenom_cl, Email_cl, Password, Num_Tel) VALUES (1, 'Doe', 'John', 'johndoe@example.com', 'password123', '555-555-1234');

--  insert into categorie
INSERT INTO `categorie` (`Id_cat`, `Nom_cat`) VALUES ('1', 'Vente'), ('2', 'Location')

--  insert into type
INSERT INTO `type` (`Id_tp`, `Titre_tp`) VALUES ('1', 'Appartement'), ('2', 'Maison'), ('3', 'Villa'), ('4', 'Bureau'), ('5', 'Terrain');


-- insert into annonce
INSERT INTO Annonce (Id_ac, Titre, Prix, Date_pub, Date_mod, Adresse, Id_tp, Id_cat, Id_cl)
VALUES (1, 'Appartement brtma', 39.99, '2022-02-14', '2022-02-14', '123 Main St.', 1, 1, 1);

INSERT INTO Annonce (Id_ac, Titre, Prix, Date_pub, Date_mod, Adresse, Id_tp, Id_cat, Id_cl)
VALUES (2, 'dar', 59.99, '2022-02-13', '2022-02-13', '456 Elm St.', 2, 2, 2);

INSERT INTO Annonce (Id_ac, Titre, Prix, Date_pub, Date_mod, Adresse, Id_tp, Id_cat, Id_cl)
VALUES (3, 'villa zwina', 79.99, '2022-02-12', '2022-02-12', '789 Oak St.', 3,3, 3);

INSERT INTO Annonce (Id_ac, Titre, Prix, Date_pub, Date_mod, Adresse, Id_tp, Id_cat, Id_cl)
VALUES (4, 'birouuu ', 19.99, '2022-02-11', '2022-02-11', '321 Pine St.', 4, 4,4);

INSERT INTO Annonce (Id_ac, Titre, Prix, Date_pub, Date_mod, Adresse, Id_tp, Id_cat, Id_cl)
VALUES (5, 'tirraaann', 99.99, '2022-02-10', '2022-02-10', '654 Maple St.', 5, 5, 5);

-- inset into image 
INSERT INTO Image (Id_img, Titre_img, Img_Principale, Id_ac)
VALUES (1, 'Red bicycle front view', true, 1);
INSERT INTO Image (Id_img, Titre_img, Img_Principale, Id_ac)
VALUES (2, 'Blue bicycle side view', false, 1);
INSERT INTO Image (Id_img, Titre_img, Img_Principale, Id_ac)
VALUES (3, 'Yellow bicycle back view', false, 1);

INSERT INTO Image (Id_img, Titre_img, Img_Principale, Id_ac)
VALUES (4, 'Green bicycle angled view', true, 2);
INSERT INTO Image (Id_img, Titre_img, Img_Principale, Id_ac)
VALUES (5, 'Orange bicycle top view', false, 2);
INSERT INTO Image (Id_img, Titre_img, Img_Principale, Id_ac)
VALUES (6, 'Orange bicycle top view', false, 2);

INSERT INTO Image (Id_img, Titre_img, Img_Principale, Id_ac)
VALUES (7, 'Green bicycle angled view', true, 3);
INSERT INTO Image (Id_img, Titre_img, Img_Principale, Id_ac)
VALUES (8, 'Orange bicycle top view', false, 3);
INSERT INTO Image (Id_img, Titre_img, Img_Principale, Id_ac)
VALUES (9, 'Orange bicycle top view', false, 3);

INSERT INTO Image (Id_img, Titre_img, Img_Principale, Id_ac)
VALUES (10, 'Green bicycle angled view', true, 4);
INSERT INTO Image (Id_img, Titre_img, Img_Principale, Id_ac)
VALUES (11, 'Orange bicycle top view', false, 4);
INSERT INTO Image (Id_img, Titre_img, Img_Principale, Id_ac)
VALUES (12, 'Orange bicycle top view', false, 4);

INSERT INTO Image (Id_img, Titre_img, Img_Principale, Id_ac)
VALUES (13, 'Green bicycle angled view', true, 5);
INSERT INTO Image (Id_img, Titre_img, Img_Principale, Id_ac)
VALUES (14, 'Orange bicycle top view', false, 5);
INSERT INTO Image (Id_img, Titre_img, Img_Principale, Id_ac)
VALUES (15, 'Orange bicycle top view', false, 5);

-- Inner join
SELECT client.Id_cl, client.Nom_cl , annonce.Id_ac, annonce.Titre FROM client INNER JOIN annonce ON client.Id_cl=annonce.Id_cl

-- left join 
SELECT client.Id_cl, client.Nom_cl , annonce.Id_ac, annonce.Titre FROM client LEFT JOIN annonce ON client.Id_cl=annonce.Id_cl

-- right join 
SELECT client.Id_cl, client.Nom_cl , annonce.Id_ac, annonce.Titre FROM client RIGHT JOIN annonce ON client.Id_cl=annonce.Id_cl


