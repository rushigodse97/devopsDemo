pipeline {
    agent any

    tools {
    maven 'maven-3.9.9'
    }

    stages {
        stage('Compile') {
            steps {
                bat 'mvn compile'
            }
        }
        stage('Test') {
             steps {
                  bat 'mvn clean test'
             }
        }
        stage('Build') {
              steps {
                    bat 'mvn clean package'
              }
        }
        stage('Build Docker Image') {
                steps {
                    bat 'docker build -t devops-demo-app:latest .'
                }
            }

        stage('Run with Docker Compose') {
                steps {
                    bat 'docker-compose down || true'   // Stop previous if running
                    bat 'docker-compose up -d --build'
                }
            }
        }

        post {
            always {
                bat 'docker ps -a' // Optional: Show running containers
            }
        }
}
