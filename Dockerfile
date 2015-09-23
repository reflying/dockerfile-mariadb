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
RUN curl -s https://packagecloud.io/install/repositories/amjith/mycli/script.deb.sh | bash
#RUN \
    #buildDeps='apt-transport-https' \
    #&& set -x \
    #&& curl https://packagecloud.io/gpg.key | apt-key add - \
    #&& echo "deb https://packagecloud.io/amjith/mycli/ubuntu/ trusty main" | sudo tee -a /etc/apt/sources.list \
    #&& apt-get update \
    #&& apt-get install -y $buildDeps \
        #mycli \
    #&& rm -r /var/lib/apt/lists/* \
    #&& apt-get purge -y --auto-remove $buildDeps 

# Define working directory.
WORKDIR /etc/mysql

# 解决时区问题
env TZ "Asia/Shanghai"

# Expose ports.
EXPOSE 3306

