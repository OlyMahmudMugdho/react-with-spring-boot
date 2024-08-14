FROM alpine/java:21-jdk
COPY react-with-spring-boot*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]