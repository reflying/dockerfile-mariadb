#!/bin/bash

name=mariadb
docker stop ibbd-$name 
docker rm ibbd-$name 

docker run --name=ibbd-$name -d \
    -p 3306:3306 \
    -v /data/$name:/usr/local/$name/var \
    ibbd/$name

docker ps

