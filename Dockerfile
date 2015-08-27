#
# Mysql Dockerfile
#
# https://github.com/ibbd/dockerfile-mariadb
#
# sudo docker build -t ibbd/mariadb ./
#

# Pull base image.
FROM mariadb:latest

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# Define mountable directories.
VOLUME ["/var/lib/mysql"]

# 使用自定义配置文件
# 将默认的配置里面的目录/usr/local改成/data
COPY conf/my.cnf     /etc/mysql/my.cnf

# Define working directory.
WORKDIR /etc/mysql

# Expose ports.
EXPOSE 3306

