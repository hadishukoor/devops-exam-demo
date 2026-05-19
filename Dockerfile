FROM openjdk:17

# Copy the built WAR file into the container
COPY target/webappdemo-1.0.war /app.war

# Expose the port that the Java app will listen on
EXPOSE 8081

# Run the Java application from the WAR file
CMD ["java", "-jar", "/app.war"]
