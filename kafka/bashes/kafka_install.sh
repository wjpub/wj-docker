#!/bin/bash
 
kafka_install() {
    tar -zxf apache-zookeeper-3.5.5-bin.tgz
    tar -zxf jdk-12.0.2_linux-x64_bin.tgz
    tar -zxf kafka_2.12-2.2.0.tgz
    echo '
export JAVA_HOME=/root/jdk-12.0.2/
export PATH=${PATH}:${JAVA_HOME}/bin
' >> /etc/profile
    source /etc/profile

    mkdir /root/kafka_2.12-2.2.0/logs
    sed -i "s/#advertised.listeners.*9092/advertised.listeners=PLAINTEXT:\/\/127.0.0.1:9092/g" /root/kafka_2.12-2.2.0/config/server.properties
    sed -i "s/log.dirs=\/tmp\/kafka-logs/log.dirs=\/root\/kafka_2.12-2.2.0\/logs/g" /root/kafka_2.12-2.2.0/config/server.properties
    sed -i "s/zookeeper.connect=localhost:2181/zookeeper.connect=127.0.0.1:2181/g" /root/kafka_2.12-2.2.0/config/server.properties

    mkdir /root/apache-zookeeper-3.5.5-bin/data
    mkdir /root/apache-zookeeper-3.5.5-bin/logs
    cp /root/apache-zookeeper-3.5.5-bin/conf/zoo_sample.cfg /root/apache-zookeeper-3.5.5-bin/conf/zoo.cfg
    sed -i "s/dataDir=\/tmp\/zookeeper/dataDir=\/root\/apache-zookeeper-3.5.5-bin\/data/g" /root/apache-zookeeper-3.5.5-bin/conf/zoo.cfg
    sed -i "/\/root\/apache-zookeeper-3.5.5-bin\/data/a\dataLogDir=\/root\/apache-zookeeper-3.5.5-bin\/logs" /root/apache-zookeeper-3.5.5-bin/conf/zoo.cfg

}

kafka_install
