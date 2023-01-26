CREATE TABLE Vetement (
    nVet INT PRIMARY KEY,
    type CHAR(255) NOT NULL,
    couleur CHAR(255) NOT NULL,
    taille CHAR(255) NOT NULL,
    prix DECIMAL(10,2) NOT NULL
);

CREATE TABLE Boutique (
    nBout INT PRIMARY KEY,
    adr CHAR(255) NOT NULL,
    villeBout CHAR(255) NOT NULL
);

CREATE TABLE Stock (
    nBout INT NOT NULL,
    nVet INT NOT NULL,
    qtteStock INT NOT NULL,
    PRIMARY KEY (nBout, nVet),
    FOREIGN KEY (nBout) REFERENCES Boutique(nBout),
    FOREIGN KEY (nVet) REFERENCES Vetement(nVet)
);

CREATE TABLE Client (
    nCli INT PRIMARY KEY,
    nom CHAR(255) NOT NULL,
    dateNaiss DATE NOT NULL,
    villeCli CHAR(255) NOT NULL
);

CREATE TABLE Achat (
    nCli INT NOT NULL,
    nVet INT NOT NULL,
    nBout INT NOT NULL,
    dateAchat DATE NOT NULL,
    qtteAchat INT NOT NULL,
    PRIMARY KEY (nCli, nVet, nBout, dateAchat),
    FOREIGN KEY (nCli) REFERENCES Client(nCli),
    FOREIGN KEY (nVet) REFERENCES Vetement(nVet),
    FOREIGN KEY (nBout) REFERENCES Boutique(nBout)
);