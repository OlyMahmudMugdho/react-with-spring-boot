FROM alpine/java:21-jdk
WORKDIR /app
COPY target/react-with-spring-boot-0.0.1-SNAPSHOT .
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]