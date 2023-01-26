INSERT INTO Département (nDep,nomDep,taille,budget) VALUES (1,'Informatique','23','15000');
INSERT INTO Département (nDep,nomDep,taille,budget) VALUES (2,'Comptabilité','12','10000');
INSERT INTO Département (nDep,nomDep,taille,budget) VALUES (3,'Marketing','15','12000');
INSERT INTO Département (nDep,nomDep,taille,budget) VALUES (4,'Ressources Humaines','10','8000');
INSERT INTO Département (nDep,nomDep,taille,budget) VALUES (5,'Direction','5','5000');

INSERT INTO Salarié (nSal,nom,poste,salaire,nDep) VALUES (1,'Dupont','Directeur','9600',5);
INSERT INTO Salarié (nSal,nom,poste,salaire,nDep) VALUES (2,'Aubert','Chef de projet','5400',1);
INSERT INTO Salarié (nSal,nom,poste,salaire,nDep) VALUES (3,'Martin','Chef de projet','6200',3);
INSERT INTO Salarié (nSal,nom,poste,salaire,nDep) VALUES (4,'Blanc','Chef de projet','4500',4);
INSERT INTO Salarié (nSal,nom,poste,salaire,nDep) VALUES (5,'Vincent','Chef de projet','4300'2);


INSERT INTO Enfant (nEnfant,nSal,dateNaiss,sexe) VALUES (1,1,'2000','F');
INSERT INTO Enfant (nEnfant,nSal,dateNaiss,sexe) VALUES (2,1,'2002','H');
INSERT INTO Enfant (nEnfant,nSal,dateNaiss,sexe) VALUES (3,2,'2000','F');
INSERT INTO Enfant (nEnfant,nSal,dateNaiss,sexe) VALUES (4,2,'2002','H');
INSERT INTO Enfant (nEnfant,nSal,dateNaiss,sexe) VALUES (5,3,'2000','F');

INSERT INTO Jouet (nJouet,description,type,prix) VALUES (1,'Poupée','Loisir','20');
INSERT INTO Jouet (nJouet,description,type,prix) VALUES (2,'Voiture','Loisir','30');
INSERT INTO Jouet (nJouet,description,type,prix) VALUES (3,'Puzzle','Educatif','10');
INSERT INTO Jouet (nJouet,description,type,prix) VALUES (4,'Poupée','Loisir','20');
INSERT INTO Jouet (nJouet,description,type,prix) VALUES (5,'Voiture','Loisir','30');

INSERT INTO Commande (nJouet,nEnfant,annee) VALUES (1,1,'2020');
INSERT INTO Commande (nJouet,nEnfant,annee) VALUES (2,1,'2020');
INSERT INTO Commande (nJouet,nEnfant,annee) VALUES (3,1,'2020');
INSERT INTO Commande (nJouet,nEnfant,annee) VALUES (4,2,'2020');
INSERT INTO Commande (nJouet,nEnfant,annee) VALUES (5,2,'2020');