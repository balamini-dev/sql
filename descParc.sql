
use creparc; /* le script qui est en dessous va s'effectuer dans la bdd creparc */

DESCRIBE installer; /* Permet d'afficher la structur d'une table, (par contre pour afficher le contenu d'une table il faut utiliser [ SELECT ]) */
DESCRIBE logiciel;
DESCRIBE poste;
DESCRIBE salle;
DESCRIBE segment;
DESCRIBE types;

/* SHOW TABLES = Cela permet d'afficher toutes les tables de la bdd */

/* Est-ce qu'on peut faire afficher toutes les tables d'une base de données directement en une commande ? */

/*

ce code est à lancer dans le l'invite de commande MYSQL en  ecrivant "SOURCE" puis le chemin du fichier.
Par exemple :

Source C:\Users\balamini\Documents\1_BALAMINI\BTS\Cours BTS\Programmation\SQL\creer_bdd_et_tables\descParc.sql

*/
