-- Suppression de la BDD si elle existe
DROP DATABASE IF EXISTS oparc_maintenance;

-- Supprimer le role
DROP ROLE IF EXISTS maintenance;

-- Création du role
CREATE USER maintenance WITH PASSWORD '1234';

-- Création de la BDD
CREATE DATABASE oparc_maintenance OWNER maintenance;