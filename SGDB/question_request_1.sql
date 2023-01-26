--1 : Numéro des boutiques ayant en stock un pantalon bleu ou une jupe noire

SELECT nBout
FROM Stock, Vetement
WHERE (Stock.nVet = Vetement.nVet) AND ((Vetement.type = 'pantalon' AND Vetement.couleur = 'bleu') OR (Vetement.type = 'jupe' AND Vetement.couleur = 'noire'));


--============================================================================================================================================================
--1bis : Numéro et ville des boutiques ayant en stock un pantalon bleu ou une jupe noire

SELECT Boutique.nBout, Boutique.villeBout
FROM Stock, Vetement, Boutique
WHERE (Stock.nVet = Vetement.nVet) AND (Stock.nBout = Boutique.nBout) AND ((Vetement.type = 'pantalon' AND Vetement.couleur = 'bleu') OR (Vetement.type = 'jupe' AND Vetement.couleur = 'noire'));


--============================================================================================================================================================
--2 : Ville de résidence des clients ayant effectué des achats dans les boutiques de Paris OU de Lyon

SELECT DISTINCT villeCli, Client.nom
FROM Achat,Boutique,Client
WHERE Boutique.nBout = Achat.nBout AND Client.nCli = Achat.nCli 
    AND (Boutique.villeBout = 'paris' OR Boutique.villeBout = 'lyon');


--============================================================================================================================================================
--2bis : Ville de résidence des clients ayant effectué des achats dans les boutiques de Paris ET de Lyon

SELECT DISTINCT villeCli, Client.nom
FROM Achat,Boutique,Client
WHERE Boutique.nBout = Achat.nBout AND Client.nCli = Achat.nCli  AND Boutique.villeBout = 'paris' AND
    achat.nCli IN ( SELECT nCli
                    FROM Achat, Boutique
                    WHERE Boutique.nBout = Achat.nBout AND Boutique.villeBout = 'lyon');

;
--============================================================================================================================================================
--3 : Adresse et ville des boutiques ayant vendu des vêtements de taille XL

SELECT DISTINCT Boutique.adr, Boutique.villeBout, vetement.taille
FROM Achat, Boutique, Vetement
WHERE Achat.nBout = Boutique.nBout AND Achat.nVet = Vetement.nVet
    AND Vetement.taille = 'XL';


--============================================================================================================================================================
--3bis : Adresse et ville des boutiques n’ayant vendu que des vêtements de taille XL

SELECT DISTINCT Boutique.adr, Boutique.villeBout, vetement.taille
FROM Achat, Vetement, Boutique
WHERE Achat.nBout = Boutique.nBout AND Achat.nVet = Vetement.nVet
    AND vetement.taille = 'XL'
    AND achat.nBout NOT IN (SELECT achat.nBout
                            FROM achat, vetement
                            WHERE achat.nVet = vetement.nVet AND vetement.taille <> 'XL');


--============================================================================================================================================================
--4 : Les dates d’achat et les prix des veste

SELECT dateAchat, prix
FROM Achat, Vetement
WHERE Achat.nVet = Vetement.nVet AND Vetement.type = 'veste';


--============================================================================================================================================================
--4bis : Les dates d’achat de la veste la plus chère.
-- pas encore bon

SELECT achat.dateAchat
FROM Achat, Vetement
WHERE Achat.nVet = Vetement.nVet AND Vetement.type = 'veste' AND Vetement.prix = (SELECT MAX(vetement.prix) FROM Vetement WHERE vetement.type = 'veste');

-- 2eme solution

SELECT dateAchat,prix
FROM Achat
JOIN Vetement ON Achat.nVet = Vetement.nVet
WHERE Vetement.type = 'veste' AND Vetement.prix =(SELECT MAX(prix)FROM Achat JOIN Vetement on Achat.nVet = Vetement.nVet WHERE Vetement.type = 'veste')

--============================================================================================================================================================
--5 : Nom des clients ayant acheté des vêtements dont la couleur contient le mot rose (par exemple rose vif, rose pâle, vieux rose), triés par prix décroissant de ces vêtements.

SELECT DISTINCT Client.nom, Vetement.prix
FROM Achat, Client, Vetement
WHERE Achat.nCli = Client.nCli AND Achat.nVet = Vetement.nVet AND Vetement.couleur LIKE '%rose%'
ORDER BY Vetement.prix DESC;


--============================================================================================================================================================
--6 : Nombre de transactions effectuées par Dupont dans les boutiques parisiennes.

SELECT COUNT(*)
FROM Achat, Client, Boutique
WHERE Achat.nCli = Client.nCli AND Achat.nBout = Boutique.nBout AND Client.nom = 'Dupont' AND Boutique.villeBout = 'paris';


--============================================================================================================================================================
--7 : Montant total des achats

SELECT SUM(Vetement.prix * Achat.qtteAchat)
FROM Achat, Vetement
WHERE Achat.nVet = Vetement.nVet;


--============================================================================================================================================================
--7bis : Montant total des achats par client

SELECT Client.nom, SUM(Vetement.prix * Achat.qtteAchat)
FROM Achat, Vetement, Client
WHERE Achat.nVet = Vetement.nVet AND Achat.nCli = Client.nCli
GROUP BY Client.nom;


--============================================================================================================================================================
--7bis2 : Montant total des achats par client uniquement pour les clients ayant effectué plus de 5 achats

SELECT Client.nom, SUM(Vetement.prix * Achat.qtteAchat)
FROM Achat, Vetement, Client
WHERE Achat.nVet = Vetement.nVet AND Achat.nCli = Client.nCli
GROUP BY Client.nom
HAVING COUNT(*) > 5;