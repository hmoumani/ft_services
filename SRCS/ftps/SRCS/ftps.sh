echo "http://dl-cdn.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories
apk update && apk upgrade
apk add openrc
apk --no-cache add  telegraf
mkdir -p /run/openrc
touch /run/openrc/softlevel
rc-update add telegraf default
mkdir /etc/telegraf/
mv /files/telegraf.conf /etc/telegraf/