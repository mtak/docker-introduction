FROM ubuntu:20.04

# Avoid tzdata package configuration interactive menu
ENV TZ=Europe/Amsterdam
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y \
        apache2 \
        && rm -rf /var/lib/apt/lists/

COPY src/index.html /var/www/html/index.html

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
