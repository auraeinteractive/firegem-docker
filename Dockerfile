# Use the official latest Ubuntu base image
FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install required packages
RUN apt-get update && \
	apt-get install -y software-properties-common \
		build-essential \
		mysql-server \
		apache2 \
		php7.4 \
		php7.4-mysqli \
		php7.4-gd \
		php7.4-zip \
		php7.4-curl \
		libapache2-mod-php7.4 \
		vim \
		curl \
		wget \
		git \
		nano && \
	apt-get clean

# Enable Apache mod_rewrite module
RUN a2enmod rewrite
RUN a2enmod proxy
RUN a2enmod proxy_http

# Copy custom virtual host configuration
COPY ./assets/000-default.conf /etc/apache2/sites-available/000-default.conf

# Remove the default index.html
RUN rm /var/www/html/index.html

# Copy database and init script
COPY ./assets/init-system.sh /docker-entrypoint-initdb.d/
COPY ./assets/requirements.sh /docker-entrypoint-initdb.d/
COPY ./assets/firecore.sql /docker-entrypoint-initdb.d/
COPY ./assets/firegem.sql /docker-entrypoint-initdb.d/

# Expose port 80 for Apache
EXPOSE 80

# Make the initialization script executable
RUN chmod +x /docker-entrypoint-initdb.d/init-system.sh

# Start the initialization script
CMD ["/docker-entrypoint-initdb.d/init-system.sh"]

