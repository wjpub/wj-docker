#!/bin/bash
# backup file
cd /opt/atlassian/jira/atlassian-jira/WEB-INF/classes/database-defaults
cp mysql.properties mysql.properties_bak
cp mysql57.properties mysql57.properties_bak

# change jdbc connect url
sed -i '2c databaseUrl=jdbc:mysql:\/\/localhost:3306\/tree?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=RPC' mysql.properties
sed -i '2c databaseUrl=jdbc:mysql:\/\/localhost:3306\/tree?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=RPC' mysql57.properties

cd /opt/atlassian/jira/atlassian-jira/WEB-INF/lib
mv mysql-connector-java-5.1.39-bin.jar mysql-connector-java-5.1.39-bin.jar_bak
cp mysql-connector-java-8.0.11.jar mysql-connector-java-5.1.39-bin.jar

# notice:
# connect with mysql8 should restart contaner and ensure the memory cache to be clear.
# be patient with this, and you will succ.

