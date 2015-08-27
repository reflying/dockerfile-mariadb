# Mariadb Dockerfile

- 基础镜像：https://hub.docker.com/_/mariadb/
- 文档：https://github.com/docker-library/docs/blob/master/mariadb/README.md 
- 日志目录：/var/log/mysql
- 数据目录：/var/lib/mysql

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

