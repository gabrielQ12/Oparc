-- Suppression de la BDD si elle existe
DROP DATABASE IF EXISTS oparc;

-- Supprimer le role
DROP ROLE IF EXISTS oparc;

-- Création du role
CREATE USER oparc WITH PASSWORD '1234';

-- Création de la BDD
CREATE DATABASE oparc OWNER oparc;