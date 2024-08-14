FROM alpine/java:21-jdk
WORKDIR /app
COPY . app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]