FROM java:8
VOLUME /tmp
ADD one-0.0.1-SNAPSHOT.jar service-one.jar
RUN bash -c 'touch /service-one.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/service-one.jar"]