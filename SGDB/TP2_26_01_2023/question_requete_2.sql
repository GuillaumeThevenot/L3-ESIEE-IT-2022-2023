--1 : Nom et date de naissance des ministres qui ont été à la fois ministre des finances et ministre de la culture lors de leur carrière politique

SELECT M.nomMinistre,M.dateNaissance
FROM HistMinistre H1,Ministre M
WHERE H1.nomMinistere='finance'
AND H1.numMinistre=M.numMinistre
AND EXISTS (SELECT H2.*
			FROM HistMinistre H2
			WHERE H2.nomMinistere='culture'
			AND H2.numMinistre=M.numMinistre);

//methode IN

SELECT M.nomMinistre,M.dateNaissance
FROM HistMinistre H1,Ministre M
WHERE H1.nomMinistere='finance'
AND H1.numMinistre=M.numMinistre
AND M.numMinistre IN (SELECT H2.numMinistre
					  FROM HistMinistre H2
					  WHERE H2.nomMinistere='culture');


--============================================================================================================================================================
--2 : Nom du député de la 3e circonscription de Seine-Saint-Denis

SELECT D.nomDepute
FROM Depute D
WHERE D.Circonscription=3
		AND D.Departement='Seine-Saint-Denis';


--============================================================================================================================================================
--3 : Nom des députés qui n’ont jamais voté « contre » à un projet

SELECT D.nomDepute
FROM Depute D, VoteDepute V1
WHERE D.numDepute NOT IN (SELECT V.numDepute
				          FROM VoteDepute V
                          WHERE V.vote='contre');
						  

SELECT distinct D.nomDepute
FROM Depute D, VoteDepute As V1 
WHERE D.numDepute = V1.numDepute and NOT EXISTS (SELECT *
				   FROM VoteDepute V
				   WHERE V.vote='contre' AND D.numDepute = V.numDepute );


--============================================================================================================================================================
--4 : Nom du ministre de l’écologie nommé le 2 avril 2014

SELECT M.nomMinistre
FROM Ministre M,HistMinistre H
WHERE H.nomMinistere='ecologie'
AND H.dateNomin='2014/02/04'
AND H.numMinistre=M.numMinistre;


--============================================================================================================================================================
--5 : Nom du ministre ayant proposé le projet de loi le plus récent, et l’intitulé de ce projet

SELECT M.nomMinistre,PL.intitule
FROM ProjetLoi PL,Ministre M
WHERE M.numMinistre=PL.numMinistre
AND PL.dateProjet= (SELECT MAX(dateProjet)
					FROM ProjetLoi);


--============================================================================================================================================================
--6 : Département des députés ayant participé au vote sur tous les projets proposés en 2013

SELECT D.numDepute, D.nomDepute, D.Departement
FROM Depute D
WHERE NOT EXISTS(SELECT P.*
				FROM ProjetLoi P
				WHERE P.dateProjet>='2013/01/01'
					AND P.dateProjet<='2013/12/31'
					AND NOT EXISTS(SELECT V.*
								   FROM VoteDepute V
								   WHERE P.numProjet=V.numProjet
									AND V.numDepute=D.numDepute));


--============================================================================================================================================================
--7 :Nom des ministres dont le nom du ministère contient le mot « éducation », triés par date de nomination décroissante

SELECT ministre.nomMinistre, HistMinistre.dateNomin
FROM ministre, histministre
WHERE histministre.nomMinistere LIKE '%éducation%'
AND ministre.numMinistre = histministre.numMinistre
ORDER BY histministre.dateNomin DESC


--============================================================================================================================================================
--8 : Nombre d’articles par projet de loi
SELECT projetloi.intitulen COUNT(article.numArticle)
FROM article, projetloi
WHERE artice.numProjet = projetloi.numProjet
GROUP BY artice.numProjet


--============================================================================================================================================================
--9 : Nom des députés ayant participé au moins à 10 votes

SELECT D.nomDepute, COUNT(VD.numDepute)
FROM Depute D,VoteDepute VD
WHERE D.numDepute=VD.numDepute
GROUP BY D.numDepute
HAVING COUNT(VD.numDepute)>=10;