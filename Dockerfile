# Using apline PHP

FROM php:7.2-fpm-alpine 

# Installing PHP Extenstions

RUN docker-php-ext-install mysqli pdo pdo_mysql 

# I had to run this before i could use the pecl
RUN apk add autoconf build-base

# This install mongodb since it is not available through docker-php-ext-install. When you install through pecl, you need to enable the extension, hence the second command
RUN pecl install mongodb && docker-php-ext-enable mongodb

# Redis installed through pecl and enabled
RUN pecl install redis && docker-php-ext-enable redis

# Installing composer
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

