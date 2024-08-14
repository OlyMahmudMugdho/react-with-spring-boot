FROM alpine/java:21-jdk
WORKDIR /app
COPY react-with-spring-boot-0.0.1-SNAPSHOT.jar .
EXPOSE 8080
CMD ["java", "-jar", "react-with-spring-boot-0.0.1-SNAPSHOT.jar"]