FROM tomcat:8.0.51-jre8-alpine
LABEL maintainer="prolayjitdutta@gmail.com"
EXPOSE 8084
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/*.war /usr/local/tomcat/webapps/todo-rest-application-v1.war
CMD ["catalina.sh","run"]