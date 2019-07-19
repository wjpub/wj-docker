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
