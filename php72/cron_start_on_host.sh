#!/bin/bash
cron_running=`/usr/bin/docker exec wj-php72 /usr/sbin/service cron status | grep "cron is running" | wc -l`
if [ "$cron_running" == "0" ]; then
    /usr/bin/docker exec wj-php72 /usr/sbin/service cron start
fi
