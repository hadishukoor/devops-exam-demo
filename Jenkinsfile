pipeline {

    agent any

    stages {

        stage('Checkout') {
            steps {

                checkout scm
            }
        }

        stage('Maven Build') {
            steps {

                bat 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {

                bat 'docker build -t webappdemo .'
            }
        }

        stage('Deploy') {
            steps {
                bat '''
                docker rm -f webappdemo || echo No existing container to remove
                docker run -d -p 8083:8081 --name webappdemo webappdemo
                '''
            }
        }
    }
}

