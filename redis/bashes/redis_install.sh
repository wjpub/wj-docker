#!/bin/bash
 
redis_install() {
    apt-get install -y redis-server redis-tools
    service redis-server restart
    echo "redis install completed."
    sed -i "s/protected-mode yes/protected-mode no/g" /etc/redis/redis.conf
    sed -i "s/bind 127.0.0.1/#bind 127.0.0.1/g" /etc/redis/redis.conf
    sed -i "s/daemonize yes/daemonize no/g" /etc/redis/redis.conf
}

redis_install
