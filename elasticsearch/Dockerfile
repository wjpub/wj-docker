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

ENTRYPOINT ["/bin/bash", "/root/entrypoint.sh"]

# docker build -t wj-reids .
# docker run -dit --restart=always --name=redis -p 6379:6379 -v /var/lib/redis:/var/lib/redis wj-redis
