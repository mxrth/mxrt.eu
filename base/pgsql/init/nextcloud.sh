#/bin/bash

PGPASSWORD=$DB_PASSWORD psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --password<<-EOSQL
	    CREATE USER nextcloud WITH PASSWORD=$NEXTCLOUD_DB_PASSWORD;
	    CREATE DATABASE nextcloud;
	    GRANT ALL PRIVILEGES ON DATABASE nextcloud TO nextcloud;
EOSQL