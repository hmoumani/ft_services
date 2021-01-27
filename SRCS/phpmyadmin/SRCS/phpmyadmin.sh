echo "http://dl-cdn.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories
apk update && apk upgrade
apk add nginx curl
apk --no-cache add telegraf
adduser -D -g 'www' www
mkdir /www
chown -R www:www /var/lib/nginx
chown -R www:www /www
mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
mv /files/nginx.conf /etc/nginx/nginx.conf
mv /files/index.html /www/index.html
apk add openrc
mkdir -p /run/nginx
mkdir -p /run/openrc
touch /run/openrc/softlevel
# openrc default
apk add php7-fpm php7-mcrypt php7-soap php7-openssl php7-gmp php7-pdo_odbc php7-json php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype php7-session php7-mbstring
mv /files/phpinfo.php /www/
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz
tar zxf phpMyAdmin-5.0.4-all-languages.tar.gz
rm phpMyAdmin-5.0.4-all-languages.tar.gz
mv phpMyAdmin-5.0.4-all-languages /www/phpmyadmin
mkdir -m 777 /www/phpmyadmin/tmp/
mv /files/config.inc.php www/phpmyadmin/config.inc.php
mkdir /etc/telegraf/
mv /files/telegraf.conf /etc/telegraf/
apk add mariadb-client
echo 'root:root'|chpasswd