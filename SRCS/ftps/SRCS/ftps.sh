echo "http://dl-cdn.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories
apk update && apk upgrade
apk add openrc
echo 'root:root'|chpasswd
apk --no-cache add  telegraf
apk add vsftpd
mkdir -p /run/openrc
touch /run/openrc/softlevel
rc-update add vsftpd default
rc-update add telegraf default
apk add openssl;
openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=hmoumani.com" -addext "subjectAltName=DNS:hmoumani.com" -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem;
mkdir /etc/telegraf/
mv /files/telegraf.conf /etc/telegraf/