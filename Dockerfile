FROM php:8.2-fpm

# Update repo
RUN apt-get update && \
    apt-get install -y zip libzip-dev libpng-dev

# Install PHP modules
RUN docker-php-ext-install mysqli pdo pdo_mysql gd zip