FROM ubuntu:18.04 AS base

RUN apt-get update && apt-get install openjdk-8-jdk maven -y

RUN mkdir -p /app

ADD ./ /app/

WORKDIR /app

RUN mvn clean install

FROM tomcat:9 as final
COPY --from=base /app/target/*.war /usr/local/tomcat/webapps/myapp.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
