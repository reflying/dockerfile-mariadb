#!/bin/bash

name=mariadb
docker stop ibbd-$name 
docker rm ibbd-$name 

# 绑定IP时可以限制访问只允许宿主机器访问
docker run --name=ibbd-$name -d \
    -e MYSQL_ROOT_PASSWORD=111111 \
    -p 3306:3306 \
    #-p 127.0.0.1：3306:3306 \
    -v /data/mysql:/var/lib/mysql \
    -v /var/log/mysql:/var/log/mysql \
    ibbd/$name

docker ps

