//1 : Numéro des boutiques ayant en stock un pantalon bleu ou une jupe noire

SELECT nBout
FROM Stock, Vetement
WHERE (Stock.nVet = Vetement.nVet) AND ((Vetement.type = 'pantalon' AND Vetement.couleur = 'bleu') OR (Vetement.type = 'jupe' AND Vetement.couleur = 'noire'));


//============================================================================================================================================================
//1bis : Numéro et ville des boutiques ayant en stock un pantalon bleu ou une jupe noire

SELECT Boutique.nBout, Boutique.villeBout
FROM Stock, Vetement, Boutique
WHERE (Stock.nVet = Vetement.nVet) AND (Stock.nBout = Boutique.nBout) AND ((Vetement.type = 'pantalon' AND Vetement.couleur = 'bleu') OR (Vetement.type = 'jupe' AND Vetement.couleur = 'noire'));


//============================================================================================================================================================
//2 : Ville de résidence des clients ayant effectué des achats dans les boutiques de Paris OU de Lyon

SELECT DISTINCT villeCli
FROM Achat,Boutique,Client
WHERE (Achat.nBout = Boutique.nBout) AND (Achat.nCli = Client.nCli) AND ((Boutique.nBout= 1) OR (Boutique.nBout = 5));


//============================================================================================================================================================
//2bis : Ville de résidence des clients ayant effectué des achats dans les boutiques de Paris ET de Lyon

SELECT DISTINCT villeCli
FROM Achat,Boutique,Client
WHERE (Achat.nBout = Boutique.nBout) AND (Achat.nCli = Client.nCli) AND ((Boutique.nBout= 1) AND (Boutique.nBout = 5));


//============================================================================================================================================================
//3 : Adresse et ville des boutiques ayant vendu des vêtements de taille XL

SELECT Boutique.adr, Boutique.villeBout
FROM Achat, Boutique, Vetement
WHERE (Achat.nBout = Boutique.nBout) AND (Achat.nVet = Vetement.nVet) AND (Vetement.taille = 'XL');


//============================================================================================================================================================
//3bis : Adresse et ville des boutiques n’ayant vendu que des vêtements de taille XL

SELECT Boutique.adr, Boutique.villeBout
FROM Achat,Vetement,Boutique
WHERE (Achat.nBout = Boutique.nBout) AND (Achat.nVet = Vetement.nVet) AND (Vetement.taille = 'XL') AND NOT EXISTS ( SELECT nVet
                                                                                                                    FROM Vetement
                                                                                                                    WHERE Vetement.taille != 'XL');
WHERE NOT EXISTS (SELECT nVet FROM Vetement WHERE Vetement.taille != 'XL')



//============================================================================================================================================================
