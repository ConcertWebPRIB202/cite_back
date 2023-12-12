FROM ubuntu/postgres


RUN apt-get update && apt-get upgrade -y
RUN apt-get install curl git unzip nano p7zip-full wget postgresql-common -y
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:ondrej/php

ENV TZ=Europe/Volgograd

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get install php8.2 -y
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php --install-dir=bin --filename=composer
RUN composer global require laravel/installer
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

COPY . registration_back

RUN /etc/init.d/postgresql start && cd registration_back/database/dump && psql -U postgres user_data < user_data.sql

CMD cd registration_back && artisan serve