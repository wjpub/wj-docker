#!/bin/bash

redis_install() {
    apt-get install -y redis-server redis-tools
    service redis-server restart
    echo "redis install completed."
}

redis_install
