FROM wj-ubuntu1804
MAINTAINER Docker WJ <1179398538@qq.com>
USER root
WORKDIR /root
COPY ./* /root/
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y \
    #&& apt-get install -y dos2unix wget \
    && chmod +x *.sh \
    && dos2unix *.sh \
    && /bin/bash base_install.sh && chmod -R 777 /run/php
CMD ["/usr/sbin/php-fpm7.2", "-F", "-R", "-c", "/etc/php/7.2/fpm/php.ini", "-y", "/etc/php/7.2/fpm/php-fpm.conf", "-g", "/etc/php/7.2/fpm/php7.2-fpm.pid"]

#ENTRYPOINT ["/bin/bash", "/root/entrypoint.sh"]

# docker run -dit --restart=always --name=php72 IMAGE_ID
# docker run -dit --restart=always --name=php72 -v D:\workspace\docker:/home/wwwroot IMAGE_ID
# */10  * * * *   root    /usr/bin/docker exec wj-php72 /usr/sbin/service cron start >> /tmp/cron_start_cron.txt 2>&1
# docker run -dit --name=wj-php72 --network=research_network --restart=always -v /home/wwwroot/research:/home/wwwroot/research -v /data1:/data1 -p 9000 wj-php72:latest
