echo "http://dl-cdn.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories
apk update && apk upgrade
apk --no-cache add telegraf
rc-update add mariadb default
rc-update add telegraf default
rc-status default
touch /run/openrc/softlevel
mkdir /etc/telegraf/
mv /files/telegraf.conf /etc/telegraf/

