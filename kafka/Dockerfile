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

ENV JAVA_HOME /root/jdk-12.0.2
ENV PATH $PATH:$JAVA_HOME/bin

CMD ["/root/kafka_2.12-2.2.0/bin/kafka-server-start.sh", "/root/kafka_2.12-2.2.0/config/server.properties"]

#ENTRYPOINT ["/bin/bash", "/root/entrypoint.sh"]

