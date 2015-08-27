#!/bin/bash

ip=$(sudo docker inspect -f {{.NetworkSettings.IPAddress}} ibbd-mariadb)

mysql -h $ip -u root -p

