pipeline {
    agent any
    environment {
        DOCKER_HUB_REPO = 'abhiishek06/af-portfolio' // Replace with your Docker Hub repo
        DOCKER_HUB_CREDENTIALS = 'dockerhub-credentials-id' // Replace with your Docker credentials ID.
    }
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/AbhishekW0rks/abhishekframes-portfolio.git' // Replace with your repo URL
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("$DOCKER_HUB_REPO:latest")
                }
            }
        }
        stage('Push to Docker Hub') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', DOCKER_HUB_CREDENTIALS) {
                        docker.image("$DOCKER_HUB_REPO:latest").push()
                    }
                }
            }
        }
    }
}