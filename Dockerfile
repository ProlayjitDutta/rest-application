FROM openjdk:8-jdk-alpine
LABEL maintainer="prolayjitdutta@gmail.com"
VOLUME /tmp
EXPOSE 8084
ARG JAR_FILE=target/todo-rest-application-v1.jar
COPY ${JAR_FILE} todo-rest-application-v1.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /todo-rest-application-v1.jar" ]
