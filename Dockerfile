FROM php:8.2-apache

WORKDIR /var/www/html

COPY . /var/www/html/

RUN if [ -f /var/www/html/Index.php ]; then \
        ln -sf /var/www/html/Index.php /var/www/html/index.php; \
    fi

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

CMD ["apache2-foreground"]