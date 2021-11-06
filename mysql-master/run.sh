docker run -it \
--restart=always \
-p 3306:3306 \
--name mysql-master \
-v $PWD/my.cnf:/etc/mysql/my.cnf \
-v /Volumes/work/space/docker/mysql/mysql-master-mcb/file:/var/lib/mysql \
-e MYSQL_ROOT_PASSWORD=tiger \
-d mysql-master
