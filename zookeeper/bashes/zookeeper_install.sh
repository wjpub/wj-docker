#!/bin/bash
 
zookeeper_install() {
    tar -zxf apache-zookeeper-3.5.5-bin.tgz
    tar -zxf jdk-12.0.2_linux-x64_bin.tgz

    mkdir /root/zookeeper-data
    mkdir /root/zookeeper-logs
    cp /root/apache-zookeeper-3.5.5-bin/conf/zoo_sample.cfg /root/apache-zookeeper-3.5.5-bin/conf/zoo.cfg
    sed -i "s/dataDir=\/tmp\/zookeeper/dataDir=\/root\/zookeeper-data/g" /root/apache-zookeeper-3.5.5-bin/conf/zoo.cfg
    sed -i "/\/root\/zookeeper-data/a\dataLogDir=\/root\/zookeeper-logs" /root/apache-zookeeper-3.5.5-bin/conf/zoo.cfg

}

zookeeper_install

