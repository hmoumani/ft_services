openrc default
telegraf&
rc-service nginx status
nginx -s reload;
rc-service php-fpm7 restart
rc-service nginx restart
rc-update add nginx default
rc-update add php-fpm7 default
echo 'root:root'|chpasswd
# exec top
tail -F /dev/null