# System: Ubuntu 18.04
# MySQL: v8.0.15
# mysql data dir: /var/lib/mysql
# Mysql log dir: /var/log/mysql
# mysql conf dir: /etc/mysql/my.cnf
# eg:
# docker run \
#    -p 3306:3306 \
#    -e MYSQL_ROOT_PASSWORD=123456 \
#   -v /home/data/mysql/data:/var/lib/mysql:rw \
#   -v /home/data/mysql/log:/var/log/mysql:rw \
#   -v /home/data/mysql/config/my.cnf:/etc/mysql/my.cnf:rw \
#   -v /etc/localtime:/etc/localtime:ro \
#   --name mysql8 \
#   --restart=always \
#   -d mysql

## create the /home/data/mysql/ dirs by run image and cp the dirs in contianer to run again



