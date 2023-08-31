pwd
# Exécution du script d'initialisation en tant qu'utilisateur postgres
sudo -u postgres psql -f ./Scripts/init_db_Maintenance.sql

# Exportation des variables d'environnement
export PGUSER=maintenance
export PGPASSWORD=1234
export PGDATABASE=oparc_maintenance

# Le script de création de table
psql -f ./Scripts/createTableMaintenance.sql
