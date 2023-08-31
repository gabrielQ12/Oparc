BEGIN;

INSERT INTO "incident" (numero_incident, nature, technicien_assigné, date_de_resolution)
VALUES (1, "Bouteille de rhum coincée dans un engrenage du grand huit", "Bob l'éponge", "2023-09-27 13:12:00");

INSERT INTO "incident" (numero_incident, nature, technicien_assigné, date_de_resolution)
VALUES (2, "Engrenage pour faire sortir le fantôme de Amaury à changer", "Une chevre en Body", "2023-09-07 13:12:00");

INSERT INTO "incident" (numero_incident, nature, technicien_assigné, date_de_resolution)
VALUES (3, "Platiste coincé dans la galerie des glaces", "Charles Darwin", "2023-09-12 13:12:00");

INSERT INTO "incident" (numero_incident, nature, technicien_assigné, date_de_resolution)
VALUES (4, "Enfant oublié dans l'attraction du Triceratops", "Ed Kemper", "2023-08-31 23:00:00");

COMMIT;