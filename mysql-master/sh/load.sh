#!/bin/bash

mysql -uroot -p$MYSQL_ROOT_PASSWORD << EOF
source $WORK_PATH/$INSTALL_DB_SQL;
EOF
