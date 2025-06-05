# Use official OpenJDK 17 image
FROM openjdk:17-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy the built Spring Boot jar into the image
COPY target/devopsDemo.jar devopsDemo.jar

# Expose the port the app runs on
EXPOSE 9421

# Run the application
ENTRYPOINT ["java", "-jar", "devopsDemo.jar"]
