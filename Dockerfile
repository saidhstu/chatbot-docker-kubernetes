FROM php:7.4-apache
#Copy files to webserver 
COPY . /var/www/html/
RUN docker-php-ext-install pdo pdo_mysql mysqli

EXPOSE 80
#Start services
CMD /usr/sbin/apache2ctl -D FOREGROUND