#!/bin/bash

# Function to manage Firegem from official repo
require_firebase() {
	bash requirements.sh

	cp -R /tmp/Firegem/admin /var/www/html/
	cp -R /tmp/Firegem/lib /var/www/html/
	cp -R /tmp/Firegem/web /var/www/html/
	cp -R /tmp/Firegem/admin/admin.php /var/www/html/
	cp -R /tmp/Firegem/lib/htaccess /var/www/html/.htaccess
	cp -R /tmp/Firegem/web/index.php /var/www/html/
	rm -fr /tmp/Firegem

	mkdir -p /var/www/upload
	mkdir -p /var/www/upload/images-master
	mkdir -p /var/www/upload/images-cache
	mkdir -p /var/www/upload/templates
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


require_firebase;

create_database;
