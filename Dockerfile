FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y apache2

RUN apt install -y software-properties-common && add-apt-repository ppa:ondrej/php && apt update && apt install -y php7.4 libapache2-mod-php7.4 php7.4-bcmath php7.4-cli php7.4-common php7.4-curl php7.4-dev php7.4-gd php7.4-intl php7.4-json php7.4-mbstring php7.4-mysql php7.4-opcache php7.4-readline php7.4-xml php7.4-zip composer

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY . /var/www/html

WORKDIR /var/www/html
RUN chmod -R 777 /var/www/html

RUN a2enmod rewrite && /etc/init.d/apache2 restart

EXPOSE 80/tcp
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]