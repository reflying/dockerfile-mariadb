# Mariadb Dockerfile

- 基础镜像：https://hub.docker.com/_/mariadb/
- 文档：https://github.com/docker-library/docs/blob/master/mariadb/README.md 
- 日志目录：/var/log/mysql
- 数据目录：/var/lib/mysql

## 安装

- 从dockerfile安装：`sudo ./build.sh`
- 从hub.docker.com上下载： `sudo docker pull ibbd/mariadb`

## 使用 

见：`./run.sh.example`

## 遇到的坑

1. 使用自定义配置文件

```
Running mysql_install_db

FATAL ERROR: Could not find mysqld
```

原因：配置文件的版本和安装的版本不对应。通过 `docker exec` 进入容器，把里面的文件复制出来

2. 通过exec进入容器，登陆mysql时，输入密码出现错误

```
TERM environment variable not set.
```

在容器里面用 `env | grep TERM` 的确是找不到对应环境变量的，暂时的解决办法是在宿主机器登陆mysql。 可以执行： `./login.sh`
