#!/bin/bash

mysql8_install() {
    # find repo apt verion at: https://dev.mysql.com/downloads/repo/apt/
    /usr/bin/wget https://repo.mysql.com/mysql-apt-config_0.8.12-1_all.deb
    /usr/bin/dpkg -i mysql-apt-config_0.8.12-1_all.deb
    apt-get update --allow-insecure-repositories
    apt-get install -y --allow-unauthenticated mysql-server mysql-client libmysqlclient-dev
    echo 'default-time-zone = "+08:00"' >> /etc/mysql/mysql.conf.d/mysqld.cnf
    usermod -d /var/lib/mysql/ mysql \
    && mkdir -p /var/run/mysqld \
    && /bin/chown -R mysql:mysql /var/lib/mysql /var/run/mysqld \
    && /bin/chmod 777 /var/run/mysqld
    mysqld -u root &
    sleep 3
    mysql -uroot -e "update mysql.user set host='%' where user='root';flush privileges;ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'deepwise';flush privileges;"
    echo "mysql8 install finish."
}

mysql8_install
