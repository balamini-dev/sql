use creparc;

#3.1 ajout de colonnes
ALTER TABLE segment
ADD nbSalle TINYINT(2) DEFAULT'0',
ADD nbPoste TINYINT(2) DEFAULT'0';

ALTER TABLE logiciel
ADD nbInstall TINYINT(2) DEFAULT'0';

ALTER TABLE poste
ADD nbLog TINYINT(2) DEFAULT'0';

DESCRIBE segment;
DESCRIBE logiciel;
DESCRIBE poste;

#3.2 modification de colonnes
ALTER TABLE salle
MODIFY nomSalle VARCHAR(30);

ALTER TABLE segment
MODIFY nomSegment VARCHAR(15);

ALTER TABLE segment
MODIFY nomSegment VARCHAR(14);

ALTER TABLE Installer
ADD CONSTRAINT uc_nbPoste_nbLog UNIQUE (nPoste, nLog); # La table "Installer" fait le lien entre le nombre de poste et le nombre de logiciel. Cette contrainte permet de dire que on ne peut pas avoir plusieurs fois le même logiciel pour un même poste.


#3.3
#ALTER TABLE Installer ADD FOREIGN KEY uc_nbPoste_nbLog UNIQUE (nPoste, nLog);

ALTER TABLE poste
ADD FOREIGN KEY (indIP)
REFERENCES segment(indIP);

ALTER TABLE poste
ADD FOREIGN KEY (nSalle)
REFERENCES salle(nSalle);

ALTER TABLE installer
ADD FOREIGN KEY (nPoste)
REFERENCES poste(nPoste);

ALTER TABLE installer
ADD FOREIGN KEY (nLog)
REFERENCES logiciel(nLog);

ALTER TABLE poste
ADD FOREIGN KEY (typePoste)
REFERENCES types(typeLP);


#3.4

ALTER TABLE salle
ADD FOREIGN KEY (indIP)
REFERENCES segment(indIP);

ALTER TABLE types
ADD FOREIGN KEY (typeLP)
REFERENCES logiciel(typeLog);


DELETE FROM `salle` WHERE `nSalle`='a22';
DELETE FROM `salle` WHERE `nSalle`='a23';

INSERT INTO types (typeLP)
 VALUES
 ('BeOS'),
 ('System Be');

ALTER TABLE salle
ADD FOREIGN KEY (indIP)
REFERENCES segment(indIP);

ALTER TABLE types
ADD FOREIGN KEY (typeLP)
REFERENCES logiciel(typeLog);