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



    }
}
