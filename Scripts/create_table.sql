BEGIN;

DROP TABLE IF EXISTS "incident", "attraction", "visiteur", "reservation", "impacte"; 

CREATE TABLE incident (
    id                          INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    numero_incident             INT NOT NULL,
    nature                      TEXT NOT NULL,
    technicien_assigne          TEXT NOT NULL,
    date_de_resolution          TIMESTAMPTZ NOT NULL
);

CREATE TABLE attraction (
    id                          INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom_public                  TEXT NOT NULL,
    capacite                    INT NOT NULL,
    heure_d_ouverture           TIME NOT NULL,
    heure_de_fermeture          TIME NOT NULL,
    duree                       INTERVAL NOT NULL
);

CREATE TABLE visiteur (
    id                          INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    numero_de_billet            INT NOT NULL,
    date_de_debut_de_validite   TIMESTAMPTZ NOT NULL,
    date_de_fin_de_validite     TIMESTAMPTZ NOT NULL
);

CREATE TABLE reservation (
    id                          INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    visiteur_id                 INT REFERENCES visiteur (id),
    attraction_id               INT REFERENCES attraction (id),
    horaire_reservation         TIMESTAMPTZ NOT NULL
);

CREATE TABLE impacte (
    id                          INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    incident_id                 INT REFERENCES incident (id),
    attraction_id               INT REFERENCES attraction (id),
    date_et_heure_constat       TIMESTAMPTZ NOT NULL
);

COMMIT;