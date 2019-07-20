概述
===
自行制作的一个ODL Neon distribution的docker镜像脚本


环境组件
===
1. centos:latest
2. jdk-8u211-linux-x64.tar.gz
3. pendaylight-0.10.1.tar.gz

build
===
```
docker build -t opendaylight .
```
run
===
```
docker run -it -p 8181:8181 --name my-odl opendaylight
```
Issues
===
- 以-d的方式运行，container自行退出，而root process理论上并未退出。  
```
answer: 应该是程序会检测stdin是否有console attached，若没有则执行结束
```
