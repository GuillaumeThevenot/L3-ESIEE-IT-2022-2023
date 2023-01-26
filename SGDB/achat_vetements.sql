CREATE TABLE Vetement (
    nVet    INT (10)  PRIMARY KEY,
    type    CHAR(20) NOT NULL,
	couleur CHAR(20),
	taille  CHAR(10) NOT NULL,
	prix    INT (5) NOT NULL
);

CREATE TABLE Boutique (
    nBout INT (10) PRIMARY KEY,
    adr   CHAR(50) NOT NULL,
    villeBout CHAR(50) NOT NULL
);

CREATE TABLE Stock (
    nBout     INT (10)  NOT NULL,
    nVet      INT (10)  NOT NULL,
    qtteStock INT (10),
    PRIMARY KEY (nBout,nVet),
    FOREIGN KEY (nBout) REFERENCES Boutique (nBout),
	FOREIGN KEY (nVet) REFERENCES Vetement (nVet)
);

CREATE TABLE Client (
    nCli      INT (10)  PRIMARY KEY,
    nom       CHAR (20) NOT NULL,
    dateNaiss DATE,
    villeCli  CHAR (20) NOT NULL
);

CREATE TABLE Achat (
    nCli      INT (10)  NOT NULL,
    nVet      INT (10)  NOT NULL,
	nBout     INT (10)  NOT NULL,
    dateAchat DATE,
	qtteAchat INT (10),
    PRIMARY KEY (nCli,nVet,nBout,dateAchat),
	FOREIGN KEY (nCli) REFERENCES Client (nCli),
    FOREIGN KEY (nVet) REFERENCES Vetement (nVet),
	FOREIGN KEY (nBout) REFERENCES Boutique (nBout)
);
