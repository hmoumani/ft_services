tar -zxvf /files/telegraf.apk
mkdir /etc/telegraf
mv /files/telegraf.conf /etc/telegraf
telegraf --config /etc/telegraf/telegraf.conf&
cd grafana/bin/ && ./grafana-server&
tail -f /dev/null
#bash