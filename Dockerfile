#
# Mysql Dockerfile
#
# https://github.com/ibbd/dockerfile-mariadb
#
# sudo docker build -t ibbd/mariadb ./
#
# 没安装mycli之前302M, 安装完之后是351.6M
#

# Pull base image.
FROM mariadb:latest

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# Define mountable directories.
VOLUME ["/var/lib/mysql"]

# Define working directory.
# 默认编码修改为utf8
COPY ./conf/mariadb.cnf /etc/mysql/mariadb.cnf
WORKDIR /etc/mysql

# 解决时区问题
ENV TZ "Asia/Shanghai"

# 终端设置
ENV TERM xterm

# Expose ports.
EXPOSE 3306

