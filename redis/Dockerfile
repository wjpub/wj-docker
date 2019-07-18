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

CMD ["/usr/bin/redis-server", "/etc/redis/redis.conf"]
#CMD ["/usr/bin/redis-server", "/etc/redis/redis.conf"]

#ENTRYPOINT ["/bin/bash", "/root/entrypoint.sh"]

# docker build -t wj-reids .
# docker run -dit --restart=always --name=redis -p 6379:6379 -v /var/lib/redis:/var/lib/redis wj-redis
