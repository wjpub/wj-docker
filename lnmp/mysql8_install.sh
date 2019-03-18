#!/bin/bash

mysql8_install() {
    if [ -e /usr/bin/mysql ];then
        echo "mysql exist ."
        exit 1
    fi
    wget https://repo.mysql.com/mysql-apt-config_0.8.10-1_all.deb
    dpkg -i mysql-apt-config_0.8.10-1_all.deb
    apt-get upgrade -y
    apt-get update -y --allow-insecure-repositories
    apt-get upgrade -y
    echo "input mysq root password and stronge level to continue in next step ."
    sleep 10
    export DEBIAN_FRONTEND=noninteractive
    apt-get install -y -q mysql-server mysql-client libmysqlclient-dev
    echo 'default-time-zone = "+08:00"' >> /etc/mysql/mysql.conf.d/mysqld.cnf
    usermod -d /var/lib/mysql/ mysql \
    && mkdir -p /var/run/mysqld \
    && /bin/chown -R mysql:mysql /var/lib/mysql /var/run/mysqld \
    && /bin/chmod 777 /var/run/mysqld
    echo "mysql8 install finish."
}

mysql8_install
