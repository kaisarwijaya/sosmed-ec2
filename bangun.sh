# menjalankan service mysql
service mysql start 

#masuk ke mysql dan membuat user devopscilsy
mysql -u root -e "CREATE USER 'devops'@'localhost' IDENTIFIED BY 'Admin123'"

#memberi akses ke user devopscilsy
mysql -u root -e "grant all privileges on *.* to 'devops'@'localhost'"

#membuat databse sosmed
mysql -u devops -pAdmin123 -e "create database dbsosmed"

#import DB
cd /var/www/html/default
mysql -u devops -pAdmin123 dbsosmed < dump.sql

# restart service PHP dan nginx foreground
service php7.4-fpm restart
/usr/sbin/nginx -g "daemon off;"
