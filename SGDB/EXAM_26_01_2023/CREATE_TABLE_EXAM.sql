CREATE TABLE Département (
    nDep  INT (10)  PRIMARY KEY,
    nomDep   CHAR (20) NOT NULL,
    taille INT (10) NOT NULL,
    budget INT (10) NOT NULL
);

CREATE TABLE Salarié (
    nSal   INT (10)  PRIMARY KEY,
    nom    CHAR (20) NOT NULL,
    poste  CHAR (20) NOT NULL,
    salaire INT (10) NOT NULL,
    nDep   INT (10)  NOT NULL,
	FOREIGN KEY (nDep) REFERENCES Département (nDep)
);

CREATE TABLE Enfant (
    nEnfant  INT (10)  PRIMARY KEY,
    nSal   INT (10)  NOT NULL,
    dateNaiss    INT (10) NOT NULL,
    sexe CHAR (20) NOT NULL,
    FOREIGN KEY (nSal) REFERENCES Salarié (nSal) 
);

CREATE TABLE Jouet (
    nJouet       INT (10)  PRIMARY KEY,
    description  CHAR (20) NOT NULL,
    type         CHAR (20)   NOT NULL,
    prix         INT (10)   NOT NULL,
);

CREATE TABLE Commande (
    nJouet  INT (10)  NOT NULL,
    nEnfant INT (10)  NOT NULL,
    annee   INT (10)  NOT NULL,
    PRIMARY KEY (nJouet,nEnfant),
    FOREIGN KEY (nJouet) REFERENCES Jouet (nJouet)
    FOREIGN KEY (nEnfant) REFERENCES Enfant (nEnfant)
);