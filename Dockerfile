# Use the official OpenJDK 17 image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy wrapper and pom.xml first for dependency caching
COPY .mvn .mvn
COPY mvnw mvnw
COPY pom.xml .

# Grant permission and build dependencies + package in one layer
RUN chmod +x mvnw && ./mvnw dependency:go-offline && ./mvnw package -DskipTests

# Copy the rest of the code
COPY . .

# Expose backend port
EXPOSE 8080

# Run the Spring Boot jar
CMD ["java", "-jar", "target/interviewprep-0.0.1-SNAPSHOT.jar"]
