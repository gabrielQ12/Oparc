-- seeding_data.sql
BEGIN;

INSERT INTO incident (numero_incident, nature, technicien_assigne, date_de_resolution)
VALUES (1, 'Bouteille de rhum coincée dans un engrenage du grand huit', 'Bob l''éponge', '2023-09-27 13:12:00');

INSERT INTO incident (numero_incident, nature, technicien_assigne, date_de_resolution)
VALUES (2, 'Engrenage pour faire sortir le fantôme de Amaury à changer', 'Une chevre en Body', '2023-09-07 13:12:00');

INSERT INTO incident (numero_incident, nature, technicien_assigne, date_de_resolution)
VALUES (3, 'Platiste coincé dans la galerie des glaces', 'Charles Darwin', '2023-09-12 13:12:00');

INSERT INTO incident (numero_incident, nature, technicien_assigne, date_de_resolution)
VALUES (4, 'Enfant oublié dans l''attraction du Triceratops', 'Ed Kemper', '2023-08-31 23:00:00');

------

INSERT INTO attraction (nom_public, capacite, heure_d_ouverture, heure_de_fermeture, duree)
VALUES ('Train fantôme', 8, '20:00', '04:00', INTERVAL '30 minutes');

INSERT INTO attraction (nom_public, capacite, heure_d_ouverture, heure_de_fermeture, duree)
VALUES ('Kimberly cracheuse de feu', 45, '18:00', '01:00', INTERVAL '1 hour 30 minutes');

INSERT INTO attraction (nom_public, capacite, heure_d_ouverture, heure_de_fermeture, duree)
VALUES ('Grande arène des robots', 45, '08:00', '19:00', INTERVAL '15 minutes');

INSERT INTO attraction (nom_public, capacite, heure_d_ouverture, heure_de_fermeture, duree)
VALUES ('Galerie des glaces', 15, '08:00', '19:00', INTERVAL '24 hour' );

INSERT INTO attraction (nom_public, capacite, heure_d_ouverture, heure_de_fermeture, duree)
VALUES ('Grand huit', 25, '08:00', '19:00', INTERVAL '10 minutes');

INSERT INTO attraction (nom_public, capacite, heure_d_ouverture, heure_de_fermeture, duree)
VALUES ('Voyage à dos de Triceratops', 10, '13:00', '20:00', INTERVAL '40 minutes');

------

INSERT INTO visiteur (numero_de_billet, date_de_debut_de_validite, date_de_fin_de_validite)
VALUES (1312, '2023-09-01', '2023-09-01');

INSERT INTO visiteur (numero_de_billet, date_de_debut_de_validite, date_de_fin_de_validite)
VALUES (1359, '2023-09-22', '2023-09-22');

INSERT INTO visiteur (numero_de_billet, date_de_debut_de_validite, date_de_fin_de_validite)
VALUES (1302, '2023-08-31', '2023-08-31');

INSERT INTO visiteur (numero_de_billet, date_de_debut_de_validite, date_de_fin_de_validite)
VALUES (1412, '2023-12-01', '2023-12-01');

COMMIT;
