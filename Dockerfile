FROM openjdk:17-jdk-slim
VOLUME /tmp
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]


#FROM java:8
#
#EXPOSE 8085
#
#ADD target/docker-demo.jar docker-demo.jar
#
#ENTRYPOINT ["java","-jar","/app.jar"]
#
