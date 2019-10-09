run commands:
  docker build -t wj-zookeeper .
  docker run -dit --name=wj-zookeeper1 --network=zookeeper-cluster --restart=always -v PATH_FOR_DATA:/root/zookeeper-data -v PATH_FOR_LOGS:/root/zookeeper-logs wj-zookeeper


config cluster after run:
  echo "server.1=172.19.0.7:2888:3888" >> apache-zookeeper-3.5.5-bin/conf/zoo.cfg
  echo "server.2=172.19.0.8:2888:3888" >> apache-zookeeper-3.5.5-bin/conf/zoo.cfg
  touch zookeeper-data/myid
  echo 2 > zookeeper-data/myid


data download urls:
  jdk: https://www.oracle.com/technetwork/java/javase/downloads/jdk12-downloads-5295953.html
  zookeeper: wget https://mirrors.tuna.tsinghua.edu.cn/apache/zookeeper/stable/apache-zookeeper-3.5.5-bin.tar.gz

cluster build
  zookeeper:
    all server:
      vi zookeeper/conf/zoo.cfg
        dataDir=/usr/local/zookeeper/data
        dataLogDir=/usr/local/zookeeper/logs
        # follows are zookeeper server IP:2888:3888
        server.1=172.19.0.2:2888:3888
        server.2=172.19.0.3:2888:3888
        server.3=172.19.0.4:2888:3888
    each server:
      echo '1' > zookeeper/data/myid
      zookeeper/bin/zkServer.sh start
      zookeeper/bin/zkServer.sh status


