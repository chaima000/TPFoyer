# Use a minimal Java 17 runtime
FROM openjdk:17-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy the built JAR file from your Maven build (adjust version if needed)
COPY target/tp-foyer-5.0.0.jar app.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8082

# Start the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
