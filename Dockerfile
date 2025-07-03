# Use an official Java image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the Maven wrapper and project files
COPY .mvn .mvn
COPY mvnw mvnw
COPY pom.xml .

# Give permission to Maven wrapper
RUN chmod +x mvnw

# Copy source files *before* building
COPY src src

# Download dependencies and build the project
RUN ./mvnw dependency:go-offline
RUN ./mvnw package -DskipTests

# Expose port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "target/interviewprep-0.0.1-SNAPSHOT.jar"]
