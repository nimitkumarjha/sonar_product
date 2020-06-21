FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/ProductService-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 8802
ENV JAVA_OPTS=""
RUN sh -c "touch ProductService-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "ProductService-0.0.1-SNAPSHOT.jar" ]
