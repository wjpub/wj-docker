#!/bin/bash

php72_install() {
    echo "exec: apt -y install software-properties-common apt-transport-https lsb-release ca-certificates ...."
    apt -y install software-properties-common apt-transport-https lsb-release ca-certificates wget
    echo "exec: add-apt-repository ppa:ondrej/php ...."
    add-apt-repository -y ppa:ondrej/php
    echo "exec: apt update ...."
    apt update -y

    echo "exec: sudo apt-get install php7.2 php7.2-fpm php7.2-xml php7.2-mbstring  php7.2-mysql php7.2-zip php7.2-curl ...."
    apt-get -y install php7.2 php7.2-fpm php7.2-xml php7.2-mbstring  php7.2-mysql php7.2-zip php7.2-curl
    sed -i "s/;date.timezone =/date.timezone = \"PRC\"/g" /etc/php/7.2/fpm/php.ini
    echo "php7.2 install completed. "

}

php72_install
