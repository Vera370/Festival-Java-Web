# Festival-Java-Web
docker镜像发布地址https://hub.docker.com/r/vrea/java-web
# 快速使用
拉取docker镜像并创建容器\
```docker pull vrea/java-web:3.2 && docker run -itd --name=java vrea/java-web:3.2```\
进⼊系统后，启动mysql服务，然后运⾏前后端程序\
```service mysql start```\
```cd ~/java/demo/ && mvn spring-boot:run```\
```cd ~/web/666e/ && npm run dev```\
通过VSCode转发5173端⼝，并打开浏览器查看⽹站\
```http://localhost:5173```\
