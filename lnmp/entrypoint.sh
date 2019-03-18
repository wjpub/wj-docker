#!/bin/bash
/bin/chown -R mysql:mysql /var/lib/mysql /var/run/mysqld
service mysql start
tail -f /dev/null