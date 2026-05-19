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
                sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                // Build the Docker image from the Dockerfile
                sh 'docker build -t webappdemo .'
            }
        }

        stage('Deploy') {
            steps {
                // Run the app container on port 8081
                sh 'docker run -d -p 8081:8081 --name webappdemo webappdemo'
            }
        }
    }
}
