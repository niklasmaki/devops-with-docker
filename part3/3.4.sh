#!/bin/sh

git clone https://github.com/$1.git $1
cd $1
docker build -t $2 .
docker login -u $DOCKER_USER -p $DOCKER_PWD
docker push $2