FROM wordpress:latest

RUN apt-get update && \
    apt-get install -y \
        zlib1g-dev; \
    docker-php-ext-install zip

CMD ["apache2-foreground"]
