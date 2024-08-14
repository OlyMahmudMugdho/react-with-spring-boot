FROM alpine/java:21-jdk
COPY ./target/react-with-spring-boot*.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]