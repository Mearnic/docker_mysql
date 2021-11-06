docker run -it \
--restart=always \
-p 3307:3306 \
--link mysql-master \
--name mysql-slave \
-v $PWD/my.cnf:/etc/mysql/my.cnf \
-v /Volumes/work/space/docker/mysql/mysql-slave-mcb/file:/var/lib/mysql \
-e MYSQL_ROOT_PASSWORD=tiger \
-d mysql-slave
