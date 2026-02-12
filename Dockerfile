# frankenphp tags are of the format {frankenphp_version}-php{php_version}
# It should be noted that besides frankenphp and php, this image may also
# contain updates of other "below rail" type dependancies like Caddy and Mercure.
# Therefore besides the obvious testing, basically anything configured in the Caddyfile
# should be tested against new versions of the frankenphp image before deploying to prod
FROM dunglas/frankenphp:1.11.2-php8.4.17

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Install PHP extensions
RUN install-php-extensions bcmath ctype curl fileinfo gd \
    intl json mbstring mysqli openssl pdo pgsql  \
    redis soap tokenizer xml zip pcntl gmp exif \
    pdo_pgsql pdo_mysql pdo_sqlite
