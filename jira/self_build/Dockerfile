FROM cptactionhank/atlassian-jira-software
MAINTAINER Docker WJ <1179398538@qq.com>
USER root
WORKDIR /
# crack jira
COPY jira_jars /
COPY fix_to_connect_mysql8.sh /
RUN cp -rf /*.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/

# run image command
# docker run -dit --restart always --network network_name --name wj_jira -p 8083:8080 -p 50001:50000 wj_jira

# connect postgresDB as database works well.
# create db sql: CREATE DATABASE jiradb WITH ENCODING 'UNICODE' LC_COLLATE 'C' LC_CTYPE 'C' TEMPLATE template0;

# TODO: jira can not connect mysql with '=InnoDB' err.

