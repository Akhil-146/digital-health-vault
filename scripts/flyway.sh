#!/bin/bash

set -e

# Load environment variables
set -a
source .env
set +a

export FLYWAY_URL="jdbc:postgresql://${DB_HOST}:${DB_PORT}/${DB_NAME}"
export FLYWAY_USER="${DB_USERNAME}"
export FLYWAY_PASSWORD="${DB_PASSWORD}"

echo "========================================"
echo "Flyway Environment"
echo "Host     : ${DB_HOST}"
echo "Port     : ${DB_PORT}"
echo "Database : ${DB_NAME}"
echo "User     : ${DB_USERNAME}"
echo "========================================"

flyway \
-configFiles=database/flyway/conf/flyway.conf \
"$@"