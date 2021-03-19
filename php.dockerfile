FROM php:8.0-fpm-alpine3.12

RUN apk update && apk upgrade

RUN mkdir -p /var/www/app && chmod -R 755 /var/www/app && docker-php-ext-install mysqli pdo pdo_mysql

WORKDIR /var/www/app