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
    && cp /root/nginx.conf /usr/local/openresty/nginx/conf/

CMD ["/usr/bin/openresty", "-c", "/usr/local/openresty/nginx/conf"]

# docker build -t wj-openresty . .
# docker run -dit --restart=always --name=openresty -p 80:80 -v NGINX_SERVICE_FILE.conf:/usr/local/openresty/nginx/conf/conf.d/ wj-openresty
