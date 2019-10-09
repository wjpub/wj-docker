#/bin/bash
source /etc/profile
/root/apache-zookeeper-3.5.5-bin/bin/zkServer.sh start
#/root/kafka_2.12-2.2.0/bin/kafka-server-start.sh -daemon /root/kafka_2.12-2.2.0/config/server.properties
tail -f /dev/null

# ./kafka-topics.sh --create --zookeeper 127.0.0.1:2181 --replication-factor 1 --partitions 1 --topic my-topic
# ./kafka-console-producer.sh --broker-list 127.0.0.1:9092 --topic my-topic
# ./kafka-console-consumer.sh --bootstrap-server 127.0.0.1:9092 --topic my-topic --from-beginning



