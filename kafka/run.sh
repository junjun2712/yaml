#!/bin/bash 

#build image
tag="2.2.0"
project="dockerhub.sihai.com:8081/test/kafka"

docker build -t $project:$tag .

if [ $? -eq 0 ];then
docker push $project:$tag
fi
