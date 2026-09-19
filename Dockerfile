FROM php:8.2-apache

WORKDIR /var/www/html

COPY . /var/www/html/

RUN echo "DirectoryIndex Index.php" > /etc/apache2/mods-enabled/dir.conf

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

CMD ["apache2-foreground"]