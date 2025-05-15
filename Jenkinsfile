pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://your-repo-url.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t my-nginx-server .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Stop old container if exists
                    sh 'docker rm -f nginx-server || true'

                    // Run new one
                    sh 'docker run -d -p 8081:80 --name nginx-server my-nginx-server'
                }
            }
        }
    }
}

