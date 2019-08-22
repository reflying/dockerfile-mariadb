# Pull base image.
FROM mariadb:latest

MAINTAINER reflying "278432993@qq.com"

# Define mountable directories.
VOLUME ["/var/lib/mysql"]

# Define working directory.
# 默认编码修改为utf8
COPY ./conf/mariadb.cnf /etc/mysql/mariadb.conf.d/mariadb.cnf
WORKDIR /etc/mysql

# 解决时区问题#
ENV TZ "Asia/Shanghai"

# 终端设置
ENV TERM xterm

# Expose ports.
EXPOSE 3306

