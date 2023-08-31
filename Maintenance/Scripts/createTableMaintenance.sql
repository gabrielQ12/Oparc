BEGIN;

DROP TABLE IF EXISTS "incident"; 

CREATE TABLE "incident" (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    numero_incident INT NOT NULL,
    nature TEXT NOT NULL,
    technicien_assigne TEXT NOT NULL,
    date_de_resolution TIMESTAMPTZ NOT NULL
);

COMMIT;