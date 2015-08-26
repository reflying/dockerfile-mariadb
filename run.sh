#!/bin/bash

name=mariadb
docker stop ibbd-$name 
docker rm ibbd-$name 

docker run --name=ibbd-$name -d \
    -p 80:80 \
    -v /var/log/$name:/var/log/$name \
    -v /data/$name:/data/$name \
    ibbd/$name

docker ps

