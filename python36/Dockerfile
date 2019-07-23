FROM wj-ubuntu1804
MAINTAINER Docker WJ <1179398538@qq.com>
USER root
WORKDIR /root
COPY ./* /root/
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y \
    && apt-get install -y libsm6 libxrender1 libxext6 \
    && chmod +x *.sh \
    && dos2unix *.sh \
    && /bin/bash base_install.sh
CMD []

#ENTRYPOINT ["/bin/bash", "/root/entrypoint.sh"]

# docker run -dit --restart=always --name=php72 IMAGE_ID
# docker run -dit --restart=always --name=php72 -v D:\workspace\docker:/home/wwwroot IMAGE_ID
