openrc default
telegraf&
cp /files/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf
/etc/init.d/mariadb setup
rc-service mariadb restart
mariadb -u root -e "CREATE USER 'hmoumani'@'localhost' IDENTIFIED BY 'hmoumani';"
mariadb -u root -e "GRANT ALL PRIVILEGES ON * . * TO 'hmoumani'@'172.17.0.%' IDENTIFIED BY 'hmoumani';"
mariadb -u root -e "FLUSH PRIVILEGES;"
mariadb -u root -e "CREATE DATABASE wordpress;"
mariadb -u root -e "CREATE DATABASE phpmyadmin;"
mariadb -u root < /files/create_tables.sql
mariadb -u root wordpress < /files/wordpress.sql
mariadb -u root -e "CREATE USER 'wpuser'@'localhost' IDENTIFIED BY 'password';"
mariadb -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'localhost';"
mariadb -u root -e "CREATE USER 'wpuser'@'%' IDENTIFIED BY 'password';"
mariadb -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'%';"
mariadb -u root -e "FLUSH PRIVILEGES;"
# exec top
tail -F /dev/null