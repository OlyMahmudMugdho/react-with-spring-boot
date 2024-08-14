FROM alpine/java:21-jdk
COPY . .
EXPOSE 8080
CMD ["java", "-jar", "/app/app.jar"]