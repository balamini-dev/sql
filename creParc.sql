CREATE DATABASE IF NOT EXISTS creparc; /* Création de la bdd */
use creparc; /* le script qui est en dessous va s'effectuer dans la bdd creparc */

/*création des tables*/

CREATE TABLE Segment
(
    indIP VARCHAR(11) PRIMARY KEY,
    nomSegment VARCHAR(20) NOT NULL,
    etage TINYINT(1)
);

CREATE TABLE Salle
(
    nSalle VARCHAR(7) PRIMARY KEY,
    nomSalle VARCHAR(20) NOT NULL,
    nbPoste VARCHAR(7),
    indIp VARCHAR(11)
);

CREATE TABLE Poste
(
    nPoste VARCHAR(7) PRIMARY KEY,
    nomposte VARCHAR(20) NOT NULL,
    indIp VARCHAR(11),
    ad VARCHAR(255),
    typePoste VARCHAR(9),
    nSalle VARCHAR(7)
);

CREATE TABLE Logiciel
(
    nLog VARCHAR(5) PRIMARY KEY,
    nomLog VARCHAR(20) NOT NULL,
    dateAch dateTIME,
    version VARCHAR(7),
    typeLog VARCHAR(9),
    prix DECIMAL(6, 2)
);

CREATE TABLE Installer
(
    nPoste VARCHAR(7),
    nLog VARCHAR(5),
    numIns INTEGER(5) AUTO_INCREMENT,
    dateIns TIMESTAMP DEFAULT NOW(), /* DEFAULT NOW() permet de mettre par défaut à la date du jour */
    delai SMALLINT,
    CONSTRAINT pk_Installer PRIMARY KEY(numIns)
);

CREATE TABLE Types
(
    typeLp VARCHAR(5) PRIMARY KEY,
    nomType VARCHAR(9)
);

/*

ce code est à lancer dans le l'invite de commande MYSQL en  ecrivant "SOURCE" puis le chemin du fichier.
Par exemple :

Source C:\Users\balamini\Documents\1_BALAMINI\BTS\Cours BTS\Programmation\SQL\creer_bdd_et_tables_TP1\creParc.sql

*/