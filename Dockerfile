FROM php:5.6-apache
RUN apt-get update && \
    apt-get install -y python-pip libnet1 libnet1-dev libpcap0.8 libpcap0.8-dev git wget

COPY ./ /var/www/html/rs
RUN chmod 777 -R /var/www/html/rs/files
RUN chmod 777 -R /var/www/html/rs/configs


RUN touch /var/www/html/index.html



EXPOSE  80
