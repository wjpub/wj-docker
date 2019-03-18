FROM ubuntu:18.04
MAINTAINER Docker WJ <1179398538@qq.com>
USER root
WORKDIR /root
COPY ./* /root/
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y \
    && apt install -y dos2unix apt-utils wget less vim \
    && apt upgrade -y \
    && chmod +x /root/*.sh \
    && dos2unix /root/*.sh
#RUN /bin/bash /root/php7.2_install.sh
RUN /bin/bash /root/mysql8_install.sh
#RUN /bin/bash /root/nginx_install.sh
#CMD /bin/bash /etc/init.d/php7.2-fpm start
#CMD /bin/bash /etc/init.d/nginx start

ENTRYPOINT ["/bin/bash", "/root/entrypoint.sh"]
