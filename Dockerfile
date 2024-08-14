FROM alpine/java:21-jdk
COPY *.jar /app
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]