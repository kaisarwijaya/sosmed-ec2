FROM ubuntu

RUN apt-get update

RUN apt-get install nginx -y &&\
    apt-get install php-fpm -y &&\
    apt-get install php-mysql -y

RUN apt-get install mysql-server -y

COPY sosial-media /var/www/html/default

COPY config.php /var/www/html/default

COPY default /etc/nginx/sites-enabled

COPY bangun.sh /bangun.sh

RUN chmod +x /bangun.sh

CMD /bangun.sh

