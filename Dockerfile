# Use the official OpenJDK 17 image
FROM openjdk:17-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy the Maven wrapper and pom.xml
COPY .mvn .mvn
COPY mvnw mvnw
COPY pom.xml .

# Download dependencies
RUN ./mvnw dependency:go-offline

# Copy rest of the project
COPY . .

# Package the application
RUN ./mvnw package -DskipTests

# Expose port 8080
EXPOSE 8080

# Run the Spring Boot app
CMD ["java", "-jar", "target/interviewprep-0.0.1-SNAPSHOT.jar"]
