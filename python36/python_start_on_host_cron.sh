#!/bin/bash
python_running=`/usr/bin/docker exec wj-python3 ps -ef | grep "Research_Scheduler" | wc -l`
if [ "$python_running" != "1" ]; then
    /usr/bin/docker exec wj-python3 /bin/bash /root/shutdown.sh
    /usr/bin/docker exec wj-python3 /bin/bash /root/startup.sh
fi
