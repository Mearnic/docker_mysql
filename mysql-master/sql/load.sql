CREATE DATABASE IF NOT EXISTS mearnic default charset utf8 COLLATE utf8_general_ci;
USE mysql;

create user mearnic identified by 'tiger';
grant all on *.* to mearnic@'%' identified by 'tiger' with grant option;

CREATE user 'slave'@'%' IDENTIFIED BY 'Slave_mearnic';
GRANT REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'slave'@'%';

update user set authentication_string=password('tiger') where user='root';

flush privileges;