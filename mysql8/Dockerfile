FROM ubuntu:18.04
MAINTAINER Docker WJ <1179398538@qq.com>
USER root
WORKDIR /root
COPY ./* /root/
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y dos2unix apt-utils wget less vim lsb-release gnupg git unzip tmux \
    && chmod +x *.sh \
    && dos2unix *.sh \
    && /bin/bash base_install.sh

ENTRYPOINT ["/bin/bash", "/root/entrypoint.sh"]

# docker run -dit --restart=always -p 127.0.0.1:33060:3306 -p 127.0.0.1:800:80 IMAGE_ID
# docker run -dit --restart=always -p 127.0.0.1:33060:3306 -p 127.0.0.1:800:80 -p 127.0.0.1:801:81 -v D:\workspace\docker:/home/wwwroot IMAGE_ID
