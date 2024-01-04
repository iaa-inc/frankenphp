FROM dunglas/frankenphp

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Install PHP extensions
RUN install-php-extensions ctype curl fileinfo gd \
    intl json mbstring mysqli openssl pdo pgsql  \
    redis soap tokenizer xml zip pcntl gmp exif \
    pdo_pgsql pdo_mysql pdo_sqlite bcmath
