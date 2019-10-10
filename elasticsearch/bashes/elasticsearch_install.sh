#!/bin/bash
 
elasticsearch_install() {
    tar -zxf jdk-12.0.2_linux-x64_bin.tgz
    tar -zxf elasticsearch-7.3.2-linux-x86_64.tgz
    mv /root/jdk-12.0.2 /jdk-12.0.2
    mv /root/elasticsearch-7.3.2 /elasticsearch-7.3.2
    groupadd es
    useradd es -g es -p es
    chown -R es:es /elasticsearch-7.3.2
}

elasticsearch_install

