#!/bin/bash
set -eo pipefail

container_name=nodelayer
docker_image=nodelayer:18

docker run -td --name=$container_name $docker_image /bin/bash
docker cp ./package.json $container_name:/opt
docker cp ./package-lock.json $container_name:/opt

docker exec -w /opt -i $container_name /bin/bash <./_docker_install.sh
docker cp $container_name:/opt/nodejs.zip nodejs.zip

docker rm -f $container_name

echo "----------------"

# clear previous layer
rm -rf layer
mkdir layer

unzip nodejs.zip
mv nodejs layer
rm -f nodejs.zip
