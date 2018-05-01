FROM php:7.2-fpm-alpine

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

COPY ./ /var/www/html

WORKDIR /var/www/html

RUN composer global require hirak/prestissimo
RUN composer install
