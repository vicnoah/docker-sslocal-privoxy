使用Docker基于alpine linux将shadowsocks转为socks5与http   

一.使用方法   

1.使用docker build -t 镜像名:版本号 路径   

例子：
```
docker build -t sslocal:latest .
```   

表示使用当前路径的Dockerfile文件生成镜像   

2.运行容器   


```
docker run -ti --restart=always --name sslocal    
-d -p 8118:8118 -p 1080:1080 -e SS_SERVER=服务器ip地址    
-e SS_SERVER_PORT=服务器端口 -e SS_S
ERVER_PASSWD=123456 -e ENCRYPT_METHOD=aes-256-cfb    
-e SS_LOCAL_PORT=1080 sslocal:latest
```
