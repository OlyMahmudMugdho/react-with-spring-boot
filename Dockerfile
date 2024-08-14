FROM alpine/java:21-jdk
WORKDIR /app
COPY . .
RUN ls /app
EXPOSE 8080
CMD ["java", "-jar", "/app/app.jar"]