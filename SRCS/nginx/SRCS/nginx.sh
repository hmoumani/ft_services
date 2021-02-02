echo "http://dl-cdn.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories
apk update && apk upgrade
apk add nginx
apk --no-cache add telegraf
mkdir /etc/telegraf/
mv /files/telegraf.conf /etc/telegraf/
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
apk add openssl;
apk add mariadb-client
openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=hmoumani.com" -addext "subjectAltName=DNS:hmoumani.com" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt;
apk add openssh
rc-update add telegraf default
rc-update add sshd
/etc/init.d/sshd start
mv /files/ssh_conf /etc/ssh/sshd_config
echo 'root:root'|chpasswd