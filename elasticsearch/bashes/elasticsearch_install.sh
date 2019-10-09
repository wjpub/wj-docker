#!/bin/bash
 
elasticsearch_install() {
    tar -zxf jdk-12.0.2_linux-x64_bin.tgz
    echo '
export JAVA_HOME=/root/jdk-12.0.2/
export PATH=${PATH}:${JAVA_HOME}/bin
' >> /etc/profile
    source /etc/profile

}

elasticsearch_install

