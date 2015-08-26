#!/bin/bash

name=mysql
docker stop ibbd-$name 
docker rm ibbd-$name 

docker run --name=ibbd-$name -d \
    -p 80:80 \
    -v /etc/nginx/sites-enabled:/etc/nginx/sites-enabled \
    -v /var/log/nginx:/var/log/nginx \
    -v /home/code/ibbd:/var/www \
    ibbd/$name

docker ps

