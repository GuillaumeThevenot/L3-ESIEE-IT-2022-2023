CREATE TABLE Vetement (
    nVet INT(10) PRIMARY KEY,
    type CHAR(25) NOT NULL,
    couleur CHAR(25) NOT NULL,
    taille CHAR(25) NOT NULL,
    prix INT(10) NOT NULL
);

CREATE TABLE Boutique (
    nBout INT(10) PRIMARY KEY,
    adr CHAR(25) NOT NULL,
    villeBout CHAR(25) NOT NULL
);

CREATE TABLE Stock (
    nBout INT(10) NOT NULL,
    nVet INT(10) NOT NULL,
    qtteStock INT(10) NOT NULL,
    PRIMARY KEY (nBout, nVet),
    FOREIGN KEY (nBout) REFERENCES Boutique(nBout),
    FOREIGN KEY (nVet) REFERENCES Vetement(nVet)
);

CREATE TABLE Client (
    nCli INT(10) PRIMARY KEY,
    nom CHAR(25) NOT NULL,
    dateNaiss INT(10) NOT NULL,
    villeCli CHAR(25) NOT NULL
);

CREATE TABLE Achat (
    nCli INT(10) NOT NULL,
    nVet INT(10) NOT NULL,
    nBout INT(10) NOT NULL,
    dateAchat INT(10) NOT NULL,
    qtteAchat INT(10) NOT NULL,
    PRIMARY KEY (nCli, nVet, nBout, dateAchat),
    FOREIGN KEY (nCli) REFERENCES Client(nCli),
    FOREIGN KEY (nVet) REFERENCES Vetement(nVet),
    FOREIGN KEY (nBout) REFERENCES Boutique(nBout)
);