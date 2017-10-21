#使用Docker基于alpine linux搭建同时支持rtmp与hls协议的直播镜像(hls直播流，同时提供三种清晰度)

##一.使用方法
###1.使用docker build -t 镜像名:版本号 路径
####例子：docker build -t alpine-rtmp:latest .
####可以在构建容器镜像前更改nginx的配置文件，后面的一些命令会改变，如果你懂可以修改。
####表示使用当前路径的Dockerfile文件生成镜像
###2.运行容器dodocker run -ti --name rtmp -p 80:80 -p 1935:1935 -v /mydata/hls:/var/live/hls -v /mydata/live:/var/www/live -d wuwengang/docker-alpine-rtmp-hls-live
####运行容器时请务必使用-v 参数将容器内的hls切片目录挂载到容器外部
###3.默认推流地址
####rtmp://主机ip/live/直播房间号(可随便填写，不能冲突)
###4.默认播放地址
####rtmp://主机ip/live/房间号
####下面是hls方式的直播流，同时提供三种清晰度
####http://主机ip/live/房间号.m3u8
####http://主机ip/live/房间号_1080p/index.m3u8 （1080p分辨率）
####http://主机ip/live/房间号_720p/index.m3u8 （720p分辨率）
####http://主机ip/live/房间号_480p/index.m3u8 （480p分辨率）
