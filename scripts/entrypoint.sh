#!/bin/bash

MigrationPath="${MIGRATION_PATH:-/migrations/}"

DatabaseDriver="${DATABASE_DRIVER:-postgres}"
DatabaseUser="${DATABASE_USER:-katalog}"
DatabasePassword="${DATABASE_PASSWORD:-password}"
DatabaseHost="${DATABASE_HOST:-localhost}"
DatabasePort="${DATABASE_PORT:-5432}"
DatabaseName="${DATABASE_NAME:-katalog}"

migrate -path=${MigrationPath} -database ${DatabaseDriver}://${DatabaseUser}:${DatabasePassword}@${DatabaseHost}:${DatabasePort}/${DatabaseName}?sslmode=disable up