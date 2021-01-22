apk update
apk add nginx curl
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
openrc default
mv /files/phpinfo.php /www/
wget https://wordpress.org/latest.tar.gz
tar zxf latest.tar.gz
rm latest.tar.gz
mv wordpress /www/wordpress
mv /files/wp-config.php /www/wordpress/
apk add mariadb-client
echo 'root:root'|chpasswd