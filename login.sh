#!/bin/bash

ip=$(docker inspect -f {{.NetworkSettings.IPAddress}} ibbd-mariadb)

echo "Login to mysql:"
mysql -h $ip -u root -p

