FROM php:5.6-apache
RUN apt-get update && \
    apt-get install -y python-pip libnet1 libnet1-dev libpcap0.8 libpcap0.8-dev git wget

COPY ./ /var/www/html/rs
RUN chmod 777 -R /var/www/html/rs/files
RUN chmod 777 -R /var/www/html/rs/configs
RUN wget https://www.rarlab.com/rar/rarlinux-x64-612.tar.gz && \
	tar -zxvf rarlinux-x64-612.tar.gz && \
	cd rar && \
	cp -v rar unrar /usr/local/bin/
	cp -v rar unrar /var/www/html/rs/rar
RUN chmod 770 -R /var/www/html/rs/rar/rar
RUN chmod 770 -R /var/www/html/rs/rar/unrar

RUN touch /var/www/html/index.html



EXPOSE  80

