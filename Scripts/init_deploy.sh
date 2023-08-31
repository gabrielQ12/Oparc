pwd
# Exécution du script d'initialisation en tant qu'utilisateur postgres
sudo -u postgres psql -f ./init_db.sql

# Exportation des variables d'environnement
export PGUSER=oparc
export PGPASSWORD=1234
export PGDATABASE=oparc

# Le script de création de table
psql -f ./create_table.sql

psql -f ./seeding_data.sql