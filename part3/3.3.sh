#!/bin/bash

git clone https://github.com/$1.git $1
cd $1
docker build -t $2 .
docker push $2