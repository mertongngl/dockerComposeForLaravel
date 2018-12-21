FROM php:7.2-fpm
 
 

RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer \
&& mkdir /run/php && apt-get update && apt-get install -y net-tools git zip unzip libpng-dev libicu-dev



ADD php.ini /usr/local/etc/php/php.ini-development

ADD php.ini /usr/local/etc/php/php.ini-production


RUN docker-php-ext-install mysqli pdo_mysql pdo exif gd intl bcmath pcntl zip

RUN apt install -y curl software-properties-common gnupg
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt install -y nodejs


ADD www-conf /etc/php/7.2/fpm/pool.d/www.conf