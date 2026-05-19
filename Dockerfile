FROM eclipse-temurin:17

# Set the working directory inside the container
WORKDIR /app

# Copy the generated WAR file from Maven target into the container
COPY target/*.war app.war

# Expose the application port for exam deployment
EXPOSE 8081

# Run the Java application from the WAR file
CMD ["java", "-jar", "app.war"]

