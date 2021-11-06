FROM mysql:5.7

MAINTAINER mearnic <https://github.com/mearnic/>

#定义工作路径
ENV WORK_PATH /opt/sql

#定义会被容器自动执行的目录
ENV AUTO_RUN_DIR /docker-entrypoint-initdb.d

#定义初始化sql文件
ENV INSTALL_DB_SQL load.sql

#定义执行脚本
ENV INSTALL_DB_SHELL load.sh

#创建文件夹
RUN mkdir -p $WORK_PATH

COPY ./sql/$INSTALL_DB_SQL $WORK_PATH/

#把要执行的shell文件放到/docker-entrypoint-initdb.d/目录下，容器会自动执行这个shell
COPY ./sh/$INSTALL_DB_SHELL $AUTO_RUN_DIR/

#给执行文件增加可执行权限
RUN chmod a+x $AUTO_RUN_DIR/$INSTALL_DB_SHELL
