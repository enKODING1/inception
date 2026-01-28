#!/bin/bash
echo "hello world"

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp --info

cd /var/www/html
chmod -R 755 /var/www/html
rm -rf *

wp core download --allow-root

sed -i 's/listen = \/run\/php\/php.*\.sock/listen = 9000/g' /etc/php/*/fpm/pool.d/www.conf
mkdir -p /run/php
/usr/sbin/php-fpm* -F