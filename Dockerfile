# Use the official latest Ubuntu base image
FROM ubuntu:20.04

# Update the package list and install required packages
RUN apt-get update && \
	apt-get install -y software-properties-common \
		build-essential \
		mysql-server \
		apache2 \
		php-7.4 \
		php-mysqli-7.4 \
		php-gd-7.4 \
		php-zip-7.4 \
		php-curl-7.4 \
		libapache2-mod-php-7.4 \
		vim \
		curl \
		wget \
		nano && \
	apt-get clean

# Enable Apache mod_rewrite module
RUN a2enmod rewrite
RUN a2enmod proxy
RUN a2enmod proxy_http

# Copy custom virtual host configuration
COPY ./assets/000-default.conf /etc/apache2/sites-available/000-default.conf

# Copy the website files to the Apache default directory
WORKDIR /var/www/html/
COPY ./html/ .

# Remove the default index.html
RUN rm /var/www/html/index.html

# Copy database and init script
COPY ./init-db.sh /docker-entrypoint-initdb.d/
COPY ./init-db.sql /docker-entrypoint-initdb.d/

# Expose port 80 for Apache
EXPOSE 80

# Restart MySQL service
RUN service mysql restart

# Make the initialization script executable
RUN chmod +x /docker-entrypoint-initdb.d/init-system.sh

# Start the initialization script
CMD ["/docker-entrypoint-initdb.d/init-system.sh"]

