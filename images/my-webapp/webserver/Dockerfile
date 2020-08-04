FROM ubuntu:20.04

# Avoid tzdata package configuration interactive menu
ENV TZ=Europe/Amsterdam
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y \
        apache2 \
        apache2-utils \
        php \
        php-mysql \
        curl \
        && apt-get clean

RUN rm /var/www/html/index.html
COPY src/index.php /var/www/html/index.php

ENV MYSQL_USER myuser
ENV MYSQL_PASS mypassword
ENV MYSQL_HOST my-webapp-db

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
