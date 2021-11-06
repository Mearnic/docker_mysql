imageName='mysql-slave'
has_container=`docker inspect --format '{{.State}}' ${imageName}`
if [ $? == 0 ]; then
    docker rm -f ${imageName}
    docker rmi ${imageName}
fi
exist=`docker inspect ${imageName}`
if [ $? == 0 ]; then
    docker rmi ${imageName}
fi

docker build -t ${imageName} .
