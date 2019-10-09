run commands
  docker build -t wj-kafka .
  docker run -dit --name=wj-kafka1 --restart=always --network=kafka-cluster -v KAFKA_LOGS:/root/kafka-logs -v KAFKA_CONFIG_SERVER:/root/kafka_2.12-2.2.0/config/server.properties wj-kafka

kafka cluster data dir:
  kafka
    server1
      server.properties
      logs
        meta.properties
    server2
      server.properties
      logs
        meta.properties

kafka cluster config
  kafka:
    all server:
      vi kafka/config/server.properties
        log.dirs=/root/kafka_2.12-2.2.0/logs
    each server:
      vi kafka/config/server.properties
        broker.id=0
        listeners=PLAINTEXT://172.19.0.2:9092
        zookeeper.connect=172.19.0.2:2181,172.19.0.3:2181,172.19.0.4:2181
      vi kafka/logs/meta.properties
        broker.id=0
      kafka/bin/kafka-server-start.sh -daemon config/server.properties
  kafka config:
    requeset.required.acks:
      0: no confirm, no delay
      1: only leader confirm
      -1: all replica confirm
      n: n > 1, leadr and n-1 followers confirm
    min.insync.replicas:
      1: at least one replica return succ.


kafka cluser operations:
  delete topic:
    kafka/bin/kafka-topics.sh --delete --topic test --zookeeper zk:2181
  create topic:''
    kafka/bin/kafka-topics.sh --create --zookeeper 172.19.0.2:2181 --replication-factor 3 --partitions 2 --topic wj-topic
  desc topic:
    kafka/bin/kafka-topics.sh --describe --zookeeper 172.19.0.2:2181 --topic wj-topic
  producer:
    kafka/bin/kafka-console-producer.sh --broker-list 172.19.0.2:9092 --topic wj-topic
  consumer:
    kafka/bin/kafka-console-consumer.sh --bootstrap-server 172.19.0.3:9092 --from-beginning --topic wj-topic



data download urls:
  jdk: https://www.oracle.com/technetwork/java/javase/downloads/jdk12-downloads-5295953.html
  kafka: wget http://mirrors.tuna.tsinghua.edu.cn/apache/kafka/2.2.0/kafka_2.12-2.2.0.tgz

kafka cluster build
  zookeeper:
    all server:
      vi zookeeper/conf/zoo.cfg
        dataDir=/usr/local/zookeeper/data
        dataLogDir=/usr/local/zookeeper/logs
        server.1=172.19.0.2:2888:3888
        server.2=172.19.0.3:2888:3888
        server.3=172.19.0.4:2888:3888
    each server:
      echo '1' > zookeeper/data/myid
      zookeeper/bin/zkServer.sh start
      zookeeper/bin/zkServer.sh status
