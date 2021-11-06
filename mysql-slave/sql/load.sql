CREATE DATABASE IF NOT EXISTS mearnic default charset utf8 COLLATE utf8_general_ci;
USE mysql;

create user mearnic identified by 'tiger';
grant all on *.* to mearnic@'%' identified by 'tiger' with grant option;

update user set authentication_string=password('tiger') where user='root';

flush privileges;

change master to master_host='mysql-master', master_user='slave', master_password='Slave_mearnic', master_port=3306, master_log_file='mysql-bin.000003', master_log_pos= 154, master_connect_retry=30;
start slave;