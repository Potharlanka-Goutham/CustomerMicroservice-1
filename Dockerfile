FROM openjdk:17-jdk-slim
EXPOSE 8080
COPY target/*.war app.war
ENTRYPOINT ["java", "-jar", "/app.war"]
