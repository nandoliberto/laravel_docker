FROM wyveo/nginx-php-fpm:latest

RUN rm -rf /usr/share/nginx/html

COPY ./src /usr/share/nginx

RUN chown -R www-data /usr/share/nginx/storage/

RUN ln -s public html

WORKDIR /usr/share/nginx/
