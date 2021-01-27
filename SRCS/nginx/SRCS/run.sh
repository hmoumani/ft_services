openrc default
telegraf&
rc-service nginx restart
rc-service nginx status
nginx -s reload;
echo 'root:root'|chpasswd
/etc/init.d/sshd restart
# exec top
tail -F /dev/null