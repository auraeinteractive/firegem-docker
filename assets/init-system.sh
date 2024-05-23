#!/bin/bash

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

