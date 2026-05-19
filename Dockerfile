FROM openjdk:17

# Copy the generated WAR file into the container
COPY target/webappdemo-1.0.war /app.war

# Expose the application port for exam deployment
EXPOSE 8081

# Run the Java application from the WAR file
CMD ["java", "-jar", "/app.war"]

