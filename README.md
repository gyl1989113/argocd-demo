# spring-boot-helloWorld
Spring Boot Example.

## 默认port是8080


java -jar target/spring-boot-helloworld-0.9.0-SNAPSHOT.jar --server.port=8888

## 查看actuator 监控
curl http://127.0.0.1:8081/actuator

curl http://127.0.0.1:8081/actuator/prometheus

curl http://127.0.0.1:8081/actuator/health

curl http://127.0.0.1:8081/actuator/metrics

curl http://127.0.0.1:8081/actuator/metrics/jvm.threads.states
