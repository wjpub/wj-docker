create database jira default character set utf8mb4 collate utf8mb4_general_ci;
CREATE USER `jira`@`%` IDENTIFIED BY 'jira';
GRANT ALL ON *.* TO `jira`@`%` WITH GRANT OPTION;
alter user 'jira'@'%' identified with mysql_native_password by 'jira';
