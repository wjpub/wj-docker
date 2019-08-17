FROM ubuntu:18.04
MAINTAINER Docker WJ <1179398538@qq.com>
USER root
WORKDIR /root
COPY ./* /root/
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y \
#    && apt-get install -y dos2unix apt-utils wget less vim lsb-release gnupg git unzip tmux \
    && apt-get install -y dos2unix \
    && chmod +x *.sh \
    && dos2unix *.sh \
    && /bin/bash base_install.sh

# docker build -t wj-ubuntu1804 .
