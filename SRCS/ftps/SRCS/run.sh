openrc default
mv files/vsftpd.conf /etc/vsftpd/vsftpd.conf 
rc-service vsftpd restart
telegraf&
# exec top
tail -F /dev/null