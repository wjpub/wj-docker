FROM ubuntu:18.04
MAINTAINER Docker WJ <1179398538@qq.com>
USER root
WORKDIR /root
COPY ./* /root/
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y dos2unix apt-utils wget less vim lsb-release gnupg \
    && chmod +x /root/*.sh \
    && dos2unix /root/*.sh

# openresty install.
RUN /bin/bash /root/openresty_install.sh

# mysql install.
RUN /bin/bash /root/mysql8_install.sh

# php7.2 install 
#RUN /bin/bash /root/php7.2_install.sh


ENTRYPOINT ["/bin/bash", "/root/entrypoint.sh"]


# docker run -dit -p 127.0.0.1:33060:3306 -p 127.0.0.1:800:80 IMAGE_ID