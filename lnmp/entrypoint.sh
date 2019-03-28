#!/bin/bash
/bin/chown -R mysql:mysql /var/lib/mysql /var/run/mysqld
nohup mysqld -u root &
service openresty start
tail -f /dev/null