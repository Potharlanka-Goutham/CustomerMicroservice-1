# Stage 1: Build the application
FROM openjdk:17-jdk-slim as build

WORKDIR /app
COPY . .

# Build the project and create a WAR file
RUN mvn clean package -DskipTests

# Stage 2: Create the runtime image
FROM openjdk:17-jdk-slim

# Expose the application port
EXPOSE 8080

# Copy the WAR file from the build stage
COPY --from=build /app/target/*.war /app.war

# Run the WAR file with Java
ENTRYPOINT ["java", "-jar", "/app.war"]
