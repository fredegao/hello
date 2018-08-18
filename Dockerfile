FROM  openjdk:8-jdk-alpine

VOLUME /tmp

ADD hello.jar app.jar

RUN sh -c 'touch /app.jar'

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]