FROM wj-ubuntu1804
MAINTAINER Docker WJ <1179398538@qq.com>
USER root
WORKDIR /root
COPY ./* /root/
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y \
    && chmod +x *.sh \
    && dos2unix *.sh \
    && /bin/bash base_install.sh
ENV JAVA_HOME /jdk-12.0.2
ENV PATH $PATH:$JAVA_HOME/bin

USER es
WORKDIR /
CMD ["/elasticsearch-7.3.2/bin/elasticsearch"]


