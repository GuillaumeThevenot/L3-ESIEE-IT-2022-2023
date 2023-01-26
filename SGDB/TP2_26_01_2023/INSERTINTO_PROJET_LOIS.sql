INSERT INTO Ministre (numMinistre,nomMinistre,dateNaissance) VALUES (210,'Vidal','1982/10/24');
INSERT INTO Ministre (numMinistre,nomMinistre,dateNaissance) VALUES (209,'Bayrou','1965/10/25');
INSERT INTO Ministre (numMinistre,nomMinistre,dateNaissance) VALUES (208,'Goulard','1977/10/24');
INSERT INTO Ministre (numMinistre,nomMinistre,dateNaissance) VALUES (207,'LeDrian','1964/10/23');
INSERT INTO Ministre (numMinistre,nomMinistre,dateNaissance) VALUES (206,'LeMaire','1972/10/21');
INSERT INTO Ministre (numMinistre,nomMinistre,dateNaissance) VALUES (205,'Nyssen','1954/10/21');
INSERT INTO Ministre (numMinistre,nomMinistre,dateNaissance) VALUES (204,'Buzyn','1960/10/23');
INSERT INTO Ministre (numMinistre,nomMinistre,dateNaissance) VALUES (203,'Flessel','1982/10/19');
INSERT INTO Ministre (numMinistre,nomMinistre,dateNaissance) VALUES (202,'Penicaud','1959/10/18');
INSERT INTO Ministre (numMinistre,nomMinistre,dateNaissance) VALUES (201,'Ferrand','1981/10/17');



INSERT INTO HistMinistre (numMinistre,dateNomin,nomMinistere) VALUES (201,'2014/11/01','economie');
INSERT INTO HistMinistre (numMinistre,dateNomin,nomMinistere) VALUES (206,'2012/07/28','Justice');
INSERT INTO HistMinistre (numMinistre,dateNomin,nomMinistere) VALUES (207,'2010/03/18','securite');
INSERT INTO HistMinistre (numMinistre,dateNomin,nomMinistere) VALUES (205,'2016/03/05','culture');
INSERT INTO HistMinistre (numMinistre,dateNomin,nomMinistere) VALUES (205,'2017/01/03','armees');
INSERT INTO HistMinistre (numMinistre,dateNomin,nomMinistere) VALUES (203,'2015/10/31','sport');
INSERT INTO HistMinistre (numMinistre,dateNomin,nomMinistere) VALUES (208,'2010/03/18','transport');
INSERT INTO HistMinistre (numMinistre,dateNomin,nomMinistere) VALUES (210,'2016/03/08','ecologie');
INSERT INTO HistMinistre (numMinistre,dateNomin,nomMinistere) VALUES (205,'2015/02/18','finance');
INSERT INTO HistMinistre (numMinistre,dateNomin,nomMinistere) VALUES (204,'2008/04/09','education');
INSERT INTO HistMinistre (numMinistre,dateNomin,nomMinistere) VALUES (202,'2015/02/18','finance');
INSERT INTO HistMinistre (numMinistre,dateNomin,nomMinistere) VALUES (208,'2014/02/04','ecologie');
INSERT INTO HistMinistre (numMinistre,dateNomin,nomMinistere) VALUES (201,'2017/04/10','education');
INSERT INTO HistMinistre (numMinistre,dateNomin,nomMinistere) VALUES (206,'2009/03/02','Sante');



INSERT INTO Depute (numDepute,nomDepute,Circonscription,Departement) VALUES (102,'DUPONT',1,'Seine-Saint-Denis');
INSERT INTO Depute (numDepute,nomDepute,Circonscription,Departement) VALUES (101,'Aubert',3,'Seine-Saint-Denis');
INSERT INTO Depute (numDepute,nomDepute,Circonscription,Departement) VALUES (103,'MARTIN',2,'Nice');
INSERT INTO Depute (numDepute,nomDepute,Circonscription,Departement) VALUES (104,'Blanc',2,'Seine-Maritime');
INSERT INTO Depute (numDepute,nomDepute,Circonscription,Departement) VALUES (105,'VINCENT',1,'Hautes-Alpes');
INSERT INTO Depute (numDepute,nomDepute,Circonscription,Departement) VALUES (106,'Daniel',3,'Seine-Saint-Denis');
INSERT INTO Depute (numDepute,nomDepute,Circonscription,Departement) VALUES (107,'MORIN',1,'Dijon');
INSERT INTO Depute (numDepute,nomDepute,Circonscription,Departement) VALUES (108,'HUGO',2,'Nanterre');
INSERT INTO Depute (numDepute,nomDepute,Circonscription,Departement) VALUES (109,'ROBIN',1,'Lyon');
INSERT INTO Depute (numDepute,nomDepute,Circonscription,Departement) VALUES (110,'Perrot',1,'Paris');



INSERT INTO ProjetLoi (numProjet,intitule,dateProjet,numMinistre) VALUES (302,'Travail','2001/10/13',201);
INSERT INTO ProjetLoi (numProjet,intitule,dateProjet,numMinistre) VALUES (301,'Salaire','2008/01/20',201);
INSERT INTO ProjetLoi (numProjet,intitule,dateProjet,numMinistre) VALUES (303,'Conge','2012/03/17',205);
INSERT INTO ProjetLoi (numProjet,intitule,dateProjet,numMinistre) VALUES (304,'Budget Scolaire','2015/06/12',204);
INSERT INTO ProjetLoi (numProjet,intitule,dateProjet,numMinistre) VALUES (305,'Budget Securite','2013/05/13',207);
INSERT INTO ProjetLoi (numProjet,intitule,dateProjet,numMinistre) VALUES (306,'Allocation Familiale','2013/04/19',205);
INSERT INTO ProjetLoi (numProjet,intitule,dateProjet,numMinistre) VALUES (307,'Budget culturel','2016/08/31',205);
INSERT INTO ProjetLoi (numProjet,intitule,dateProjet,numMinistre) VALUES (308,'Plan economique','2014/12/30',201);
INSERT INTO ProjetLoi (numProjet,intitule,dateProjet,numMinistre) VALUES (309,'Budget transport','2013/5/16',208);
INSERT INTO ProjetLoi (numProjet,intitule,dateProjet,numMinistre) VALUES (310,'Candidature Olympiade','2015/11/11',203);



INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (103,301,'pour');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (103,302,'abstention');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (109,302,'contre');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (110,305,'contre');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (101,306,'pour');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (102,308,'pour');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (102,307,'abstention');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (103,303,'contre');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (103,304,'contre');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (103,309,'abstention');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (110,306,'contre');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (110,309,'pour');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (103,305,'pour');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (103,306,'pour');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (103,308,'contre');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (103,307,'abstention');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (103,310,'contre');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (104,302,'contre');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (102,309,'abstention');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (109,306,'contre');
INSERT INTO VoteDepute (numDepute,numProjet,vote) VALUES (110,308,'pour');



INSERT INTO Article (numProjet,numArticle,contenu) VALUES (302,4021,'Travail article1');
INSERT INTO Article (numProjet,numArticle,contenu) VALUES (302,4022,'Travail article2');
INSERT INTO Article (numProjet,numArticle,contenu) VALUES (303,4031,'Conge article1');
INSERT INTO Article (numProjet,numArticle,contenu) VALUES (305,4052,'Budget Securite article2');
INSERT INTO Article (numProjet,numArticle,contenu) VALUES (306,4063,'Allocation Familiale article3');
INSERT INTO Article (numProjet,numArticle,contenu) VALUES (308,4081,'Plan economique article1');
INSERT INTO Article (numProjet,numArticle,contenu) VALUES (307,4079,'Budget transport article9');
INSERT INTO Article (numProjet,numArticle,contenu) VALUES (303,4032,'Conge article2');
INSERT INTO Article (numProjet,numArticle,contenu) VALUES (304,4046,'Budget Scolaire article6');
INSERT INTO Article (numProjet,numArticle,contenu) VALUES (303,4037,'Conge article7');