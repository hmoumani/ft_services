apk update
apk add nginx
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
apk add openssl;
apk add mariadb-client
openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=hmoumani.com" -addext "subjectAltName=DNS:hmoumani.com" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt;
apk add openssh
rc-update add sshd
/etc/init.d/sshd start
mv /files/ssh_conf /etc/ssh/sshd_config
echo 'root:root'|chpasswd