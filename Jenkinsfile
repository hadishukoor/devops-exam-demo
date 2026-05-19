pipeline {

    agent any

    stages {

        stage('Checkout') {
            steps {
                // Checkout the current repository
                checkout scm
            }
        }

        stage('Maven Build') {
            steps {
                // Build the WAR file using Maven
                bat 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                // Build the Docker image from the Dockerfile
                bat 'docker build -t webappdemo .'
            }
        }

        stage('Deploy') {
            steps {
                // Remove any existing container named webappdemo before deployment
                // This avoids port conflicts and ensures the new container starts cleanly.
                bat '''
                docker rm -f webappdemo || echo No existing container to remove
                docker run -d -p 8082:8081 --name webappdemo webappdemo
                '''
            }
        }
    }
}
