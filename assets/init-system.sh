#!/bin/bash

# Function to manage Firegem from official repo
require_firebase() {

	cd /docker-entrypoint-initdb.d/

	bash requirements.sh
}

# Function to create database if it does not exist
create_database() {
	echo "Creating database if it does not exist..."
	mysql -u root -p"$MYSQL_ROOT_PASSWORD" <<-EOSQL
		CREATE DATABASE IF NOT EXISTS firecore;
EOSQL
	mysql -u root -p"$MYSQL_ROOT_PASSWORD" <<-EOSQL
		CREATE DATABASE IF NOT EXISTS firegem;
EOSQL
	echo "Databases created."
}

# Function to create MySQL user and grant privileges
create_mysql_user() {
	echo "Creating MySQL user and granting privileges..."
	mysql -u root -p"$MYSQL_ROOT_PASSWORD" <<-EOSQL
		CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
		GRANT ALL PRIVILEGES ON firecore.* TO '$MYSQL_USER'@'%';
		FLUSH PRIVILEGES;
		GRANT ALL PRIVILEGES ON firegem.* TO '$MYSQL_USER'@'%';
		FLUSH PRIVILEGES;
EOSQL
	echo "MySQL user created and privileges granted."
}

# Function to update the database
init_db() {
	# Use the correct database
	mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "\
	USE firecore; source /docker-entrypoint-initdb.d/firecore.sql;\
	USE firegem; source /docker-entrypoint-initdb.d/firegem.sql;"
}

# Get it on!
require_firebase;
create_database;
create_mysql_user;

# Dummy just to allow me to inspect
exec "tail -f /var/log/mysql/error.log"

