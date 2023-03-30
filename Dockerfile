FROM php:7.2-fpm

RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    unzip \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install zip

WORKDIR /var/www/html

CMD ["php-fpm"]

EXPOSE 9000