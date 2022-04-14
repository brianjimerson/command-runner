FROM adoptopenjdk/openjdk11:jdk-11.0.11_9-debian
RUN apt-get update \
    && apt install -y net-tools dnsutils telnet
WORKDIR /opt
EXPOSE 8080
COPY target/*.jar /opt/app.jar
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar