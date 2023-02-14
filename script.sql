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