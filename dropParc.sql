
use creparc; /* le script qui est en dessous va s'effectuer dans la bdd creparc */

DROP TABLE installer; /* Permet de supprimer la table */
DROP TABLE logiciel;
DROP TABLE poste;
DROP TABLE salle;
DROP TABLE segment;
DROP TABLE types;


/* Est-ce qu'on peut supprimer toutes les tables d'une base de données directement en une commande ? */

/*

ce code est à lancer dans le l'invite de commande MYSQL en  ecrivant "SOURCE" puis le chemin du fichier.
Par exemple :

Source C:\Users\balamini\Documents\1_BALAMINI\BTS\Cours BTS\Programmation\SQL\creer_bdd_et_tables_TP1\dropParc.sql

*/