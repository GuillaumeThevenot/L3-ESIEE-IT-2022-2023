INSERT INTO Département (nDep,nomDep,taille,budget) VALUES (1,'Informatique','23','15000');
INSERT INTO Département (nDep,nomDep,taille,budget) VALUES (2,'Comptabilité','12','10000');
INSERT INTO Département (nDep,nomDep,taille,budget) VALUES (3,'Marketing','15','12000');
INSERT INTO Département (nDep,nomDep,taille,budget) VALUES (4,'Ressources Humaines','10','8000');
INSERT INTO Département (nDep,nomDep,taille,budget) VALUES (5,'Direction','5','5000');
INSERT INTO Département (nDep,nomDep,taille,budget) VALUES (6,'Communication','8','9000');
INSERT INTO Département (nDep,nomDep,taille,budget) VALUES (7,'Juridique','6','7000');
INSERT INTO Département (nDep,nomDep,taille,budget) VALUES (8,'Logistique','20','20000');
INSERT INTO Département (nDep,nomDep,taille,budget) VALUES (9,'Production','30','30000');
INSERT INTO Département (nDep,nomDep,taille,budget) VALUES (10,'Maintenance','25','25000');


INSERT INTO Salarié (nSal,nom,poste,salaire,nDep) VALUES (1,'Dupont','Directeur','9600',5);
INSERT INTO Salarié (nSal,nom,poste,salaire,nDep) VALUES (2,'Aubert','Chef de projet','5400',1);
INSERT INTO Salarié (nSal,nom,poste,salaire,nDep) VALUES (3,'Martin','Chef de projet','6200',3);
INSERT INTO Salarié (nSal,nom,poste,salaire,nDep) VALUES (4,'Blanc','Chef de projet','2500',4);
INSERT INTO Salarié (nSal,nom,poste,salaire,nDep) VALUES (5,'Vincent','Chef de projet','4300'2);
INSERT INTO Salarié (nSal,nom,poste,salaire,nDep) VALUES (6,'Leroy','Chef de projet','3500',3);
INSERT INTO Salarié (nSal,nom,poste,salaire,nDep) VALUES (7,'Lefebvre','Chef de projet','3200',1);
INSERT INTO Salarié (nSal,nom,poste,salaire,nDep) VALUES (8,'Lopez','Chef de projet','2800',2);
INSERT INTO Salarié (nSal,nom,poste,salaire,nDep) VALUES (9,'Girard','Chef de projet','3000',4);
INSERT INTO Salarié (nSal,nom,poste,salaire,nDep) VALUES (10,'Moreau','Chef de projet','3100',5);


INSERT INTO Enfant (nEnfant,nSal,dateNaiss,sexe) VALUES (1,1,'10/02/2010','F');
INSERT INTO Enfant (nEnfant,nSal,dateNaiss,sexe) VALUES (2,1,'23/07/2007','H');
INSERT INTO Enfant (nEnfant,nSal,dateNaiss,sexe) VALUES (3,2,'15/12/2015','H');
INSERT INTO Enfant (nEnfant,nSal,dateNaiss,sexe) VALUES (4,3,'20/12/2018','F');
INSERT INTO Enfant (nEnfant,nSal,dateNaiss,sexe) VALUES (5,3,'04/04/2018','H');
INSERT INTO Enfant (nEnfant,nSal,dateNaiss,sexe) VALUES (6,4,'01/01/2019','F');
INSERT INTO Enfant (nEnfant,nSal,dateNaiss,sexe) VALUES (7,5,'01/01/2019','F');
INSERT INTO Enfant (nEnfant,nSal,dateNaiss,sexe) VALUES (8,6,'01/01/2019','H');
INSERT INTO Enfant (nEnfant,nSal,dateNaiss,sexe) VALUES (9,7,'01/01/2019','F');
INSERT INTO Enfant (nEnfant,nSal,dateNaiss,sexe) VALUES (10,8,'01/01/2019','H');


INSERT INTO Jouet (nJouet,description,type,prix) VALUES (1,'Poupée','Loisir','20');
INSERT INTO Jouet (nJouet,description,type,prix) VALUES (2,'Lego','Loisir','80');
INSERT INTO Jouet (nJouet,description,type,prix) VALUES (3,'Puzzle','Educatif','10');
INSERT INTO Jouet (nJouet,description,type,prix) VALUES (4,'Poupée','Loisir','20');
INSERT INTO Jouet (nJouet,description,type,prix) VALUES (5,'Voiture','Loisir','30');
INSERT INTO Jouet (nJouet,description,type,prix) VALUES (6,'Puzzle','Educatif','10');
INSERT INTO Jouet (nJouet,description,type,prix) VALUES (7,'Poupée','Educatif','10');
INSERT INTO Jouet (nJouet,description,type,prix) VALUES (8,'Lego','Educatif','10');
INSERT INTO Jouet (nJouet,description,type,prix) VALUES (9,'Puzzle','Educatif','10');
INSERT INTO Jouet (nJouet,description,type,prix) VALUES (10,'Voiture','Educatif','10');


INSERT INTO Commande (nJouet,nEnfant,annee) VALUES (1,1,'2020');
INSERT INTO Commande (nJouet,nEnfant,annee) VALUES (2,1,'2020');
INSERT INTO Commande (nJouet,nEnfant,annee) VALUES (3,1,'2020');
INSERT INTO Commande (nJouet,nEnfant,annee) VALUES (4,2,'2020');
INSERT INTO Commande (nJouet,nEnfant,annee) VALUES (5,2,'2020');
INSERT INTO Commande (nJouet,nEnfant,annee) VALUES (6,3,'2020');
INSERT INTO Commande (nJouet,nEnfant,annee) VALUES (7,3,'2020');
INSERT INTO Commande (nJouet,nEnfant,annee) VALUES (8,4,'2020');
INSERT INTO Commande (nJouet,nEnfant,annee) VALUES (9,4,'2020');
INSERT INTO Commande (nJouet,nEnfant,annee) VALUES (10,5,'2020');