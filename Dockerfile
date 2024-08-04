# Stage 1: Build the application
FROM eclipse-temurin:21 AS builder
# FROM amazoncorretto:21 AS builder

# Install Maven
RUN apt-get update && \
    apt-get install -y maven && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy the pom.xml and download the dependencies
COPY pom.xml .
RUN mvn dependency:go-offline

# Copy the rest of the application source code
COPY src ./src

# Package the application
RUN mvn clean package -DskipTests

# Stage 2: Run the application
FROM amazoncorretto:21

# Set the working directory
WORKDIR /app

# Copy the packaged jar file from the builder stage
COPY --from=builder /app/target/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]



# # Stage 1: Build the application
# FROM maven:3.8.5-openjdk-17-slim AS builder

# # Set the working directory
# WORKDIR /app

# # Copy the pom.xml and download the dependencies
# COPY pom.xml .
# RUN mvn dependency:go-offline

# # Copy the rest of the application source code
# COPY src ./src

# # Package the application
# RUN mvn clean package -DskipTests

# # Stage 2: Run the application
# FROM openjdk:17-jdk-slim

# # Set the working directory
# WORKDIR /app

# # Copy the packaged jar file from the builder stage
# COPY --from=builder /app/target/*.jar app.jar

# # Expose the application port
# EXPOSE 8080

# # Run the application
# ENTRYPOINT ["java", "-jar", "app.jar"]

# -------------------------

# # Use the OpenJDK 17 image for the build stage
# FROM openjdk:17-jdk-slim AS build

# # Set the working directory in the container
# WORKDIR /workspace/app

# # Copy the pom.xml file
# COPY pom.xml .

# # Download dependencies
# RUN mvn dependency:go-offline

# # Copy the rest of the application code
# COPY src ./src

# # Build the application
# RUN mvn clean package -DskipTests

# # Use the OpenJDK 11 image for the runtime
# FROM openjdk:11-jre-slim

# # Set the working directory in the container
# WORKDIR /app

# # Copy the JAR file from the build stage
# COPY --from=build /workspace/app/target/*.jar app.jar

# # Make port 8080 available to the world outside this container
# EXPOSE 8080

# # Run the application
# ENTRYPOINT ["java","-jar","/app.jar"]
