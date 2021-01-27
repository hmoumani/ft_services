echo "http://dl-cdn.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories
apk update && apk upgrade

apk add openrc --no-cache
mkdir -p /run/openrc

mkdir /etc/telegraf/
mv /files/telegraf.conf /etc/telegraf/
rc-status -a
touch /run/openrc/softlevel

apk --no-cache add grafana telegraf

rc-update add telegraf default
mkdir -p /var/lib/grafana/dashboards