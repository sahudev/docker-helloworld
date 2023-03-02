FROM openjdk:19-alpine

COPY build/libs/hello-world-docker-0.1.jar /app.jar

CMD ["java", "-jar", "/app.jar"]


