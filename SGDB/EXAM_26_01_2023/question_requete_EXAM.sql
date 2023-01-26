--1 : Les noms de département et les noms des salariés qui travaillent dans ces départements

SELECT nomDep, nom
FROM Département, Salarié
WHERE Département.nDep = Salarié.nDep


--============================================================================================================================================================
--2 : Descriptions des jouets commandés par les enfants de dupont en 2020

SELECT description
FROM Jouet, Commande, Enfant, Salarié
WHERE Jouet.nJouet = Commande.nJouet AND Commande.nEnfant = Enfant.nEnfant AND Enfant.nSal = Salarié.nSal AND (Salarié.nom = 'Dupont' AND Commande.annee = 2020);


--============================================================================================================================================================
--3 : Poste et nom du département des salariés qui ont (au moins) une fille née apres le 1er janvier 2018 et un garçon née apres le 1er janvier 2018

SELECT DISTINCT Salarié.poste, Salarié.nomDEp
FROM Salarié,Département,Enfant
WHERE département.nDep = Salarié.nDep AND Enfant.nSal = Salarié.nSal  AND (Enfant.sexe = 'F' AND Enfant.dateNaiss > '01/01/2018') AND
    Salarié.nSal IN ( SELECT nSal
                    FROM Salarié, Département, Enfant
					WHERE département.nDep = Salarié.nDep AND Enfant.nSal = Salarié.nSal  AND (Enfant.sexe = 'M' AND Enfant.dateNaiss > '01/01/2018'));


--============================================================================================================================================================
--4 :  poste et nim du département des salariés qui ont (au moins) une fille née apres le 1er janvier 2018 ou un garçon née apres le 1er janvier 2018

SELECT poste, nomDep
FROM Salarié, Département, Enfant
WHERE Salarié.nDep = Département.nDep AND Salarié.nSal = Enfant.nSal AND (Enfant.sexe = 'F' AND Enfant.dateNaiss > '01/01/2018') OR (Enfant.sexe = 'M' AND Enfant.dateNaiss > '01/01/2018');


--============================================================================================================================================================
--5 : taille des départements n'ayant aucun salarié qui gagne plus de 3000 euros

SELECT taille
FROM Département, Salarié
WHERE Département.nDep = Salarié.nDep AND Salarié.salaire < 3000
GROUP BY taille


--============================================================================================================================================================
--6 : Nom du salarié qui a l'enfant le plus jeune

SELECT nom
FROM Salarié, Enfant
WHERE Salarié.nSal = Enfant.nSal AND Enfant.dateNaiss = (SELECT MIN(dateNaiss) FROM Enfant);


--============================================================================================================================================================
--7 : prix total des jouets par salarié en 2020, seulement si le prix total est supérieur à 100 euros

SELECT Salarié.nom, SUM(Jouet.prix) AS prixTotal
FROM Salarié, Enfant, Commande, Jouet
WHERE Salarié.nSal = Enfant.nSal AND Enfant.nEnfant = Commande.nEnfant AND Commande.nJouet = Jouet.nJouet AND Commande.annee = 2020
GROUP BY Salarié.nom
HAVING prixTotal > 100;


--============================================================================================================================================================
--8 : type et prix des jouets commandés par des garçons et contenant lego dans leur déscription, trié par prix décroissant

SELECT type, prix
FROM Jouet, Commande, Enfant
WHERE Jouet.nJouet = Commande.nJouet AND Commande.nEnfant = Enfant.nEnfant AND Enfant.sexe = 'M' AND Jouet.description LIKE '%Lego%'
ORDER BY prix DESC;


--============================================================================================================================================================
--9 : 

