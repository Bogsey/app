FROM phundament/php:5.6-cli-4.0.0-dev

# Remove installation source
RUN rm -rf /app
RUN rm -rf /app-src

# Prepare composer
# /!\ Note: Please add your own API token to config.json; Phundament comes with a public token for your convenince, which may hit a rate limit
COPY ./build/composer/config.json /root/.composer/config.json

WORKDIR /app

# Install packages first
#COPY ./composer.lock /app/composer.lock
#COPY ./composer.json /app/composer.json
#RUN /usr/local/bin/composer install --prefer-dist --optimize-autoloader

# Add application code
ADD src /app/src
