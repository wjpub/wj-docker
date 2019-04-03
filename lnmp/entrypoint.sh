#!/bin/bash
/bin/chown -R mysql:mysql /var/lib/mysql /var/run/mysqld
nohup mysqld -u root &
service openresty start
service php7.2-fpm start
tail -f /dev/null
