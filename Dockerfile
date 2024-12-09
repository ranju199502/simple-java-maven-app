# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the local jar file to the container
COPY target/my-app-1.0-SNAPSHOT.jar /app/app.jar

# Expose port 8080 (or any port your app listens to)
EXPOSE 8080

# Run the Java application
CMD ["java", "-jar", "app.jar"]

