CREATE TABLE Ministre (
    numMinistre   INT (10)  PRIMARY KEY,
    nomMinistre   CHAR (20) NOT NULL,
    dateNaissance DATE
);


CREATE TABLE HistMinistre (
    numMinistre  INT (10)  NOT NULL,
    dateNomin    DATE  NOT NULL,
    nomMinistere CHAR (20) NOT NULL,
    PRIMARY KEY (numMinistre,dateNomin),
    FOREIGN KEY (numMinistre) REFERENCES Ministre (numMinistre) 
);

CREATE TABLE ProjetLoi (
    numProjet   INT (10)  PRIMARY KEY,
    intitule    CHAR (20) NOT NULL,
    dateProjet  DATE     NOT NULL,
    numMinistre INT (10),
	FOREIGN KEY (numMinistre) REFERENCES Ministre (numMinistre)
);

CREATE TABLE Article (
    numProjet  INT (10)  NOT NULL,
    numArticle INT (10)  NOT NULL,
    contenu    TEXT (20),
    PRIMARY KEY (numProjet,numArticle),
    FOREIGN KEY (numProjet) REFERENCES ProjetLoi (numProjet) 
);

CREATE TABLE Depute (
    numDepute       INT (10)  NOT NULL,
    nomDepute       CHAR (20) NOT NULL,
    Circonscription INT (5)   NOT NULL,
    Departement     CHAR (20) NOT NULL,
    PRIMARY KEY (numDepute)
);

CREATE TABLE VoteDepute (
    numDepute INT (10)  NOT NULL,
    numProjet INT (10)  NOT NULL,
    vote      CHAR (10) NOT NULL,
    PRIMARY KEY (numDepute,numProjet),
	FOREIGN KEY (numDepute) REFERENCES Depute (numDepute),
	FOREIGN KEY (numProjet) REFERENCES ProjetLoi (numProjet)
);
