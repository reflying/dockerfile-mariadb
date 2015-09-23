#
# Mysql Dockerfile
#
# https://github.com/ibbd/dockerfile-mariadb
#
# sudo docker build -t ibbd/mariadb ./
#
# 没安装mycli之前302M
#

# Pull base image.
FROM mariadb:latest

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# Define mountable directories.
VOLUME ["/var/lib/mysql"]

# 使用自定义配置文件
# 将默认的配置里面的目录/usr/local改成/data
# COPY conf/my.cnf     /etc/mysql/my.cnf

# mycli 
RUN \
    apt-get update \
    && apt-get install -y \
        build-essential \
        python-dev \
        python-pip \
    && pip install --upgrade pip \
    && pip install --upgrade virtualenv \
    && pip install mycli \
    && git config --global push.default simple \
    && rm -r /var/lib/apt/lists/*



# Define working directory.
WORKDIR /etc/mysql

# 解决时区问题
env TZ "Asia/Shanghai"

# Expose ports.
EXPOSE 3306

