FROM registry.cn-beijing.aliyuncs.com/wangxiaochun/openjdk:8u212-jre-alpine3.9
RUN sed -i 's#dl-cdn.alpinelinux.org#mirrors.tuna.tsinghua.edu.cn#' /etc/apk/repositories && apk update && apk --no-cache add tzdata bash
LABEL author=root@wangxiaochun.com
COPY *.jar /app/spring-boot-helloworld.jar
#COPY startup.sh /app/startup.sh
ENV PORT=8888 TZ=Asia/Shanghai

#方法1
#CMD ["/bin/bash", "-c", "java -jar /app/spring-boot-helloworld.jar --server.port=${PORT}"]
#方法2
CMD java -jar /app/spring-boot-helloworld.jar --server.port=$PORT
