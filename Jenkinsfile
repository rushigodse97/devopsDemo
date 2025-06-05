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
        stage('Image') {
               steps {
                     bat 'docker build -t devopsdemo.jar .'
               }
        }
        stage('Run') {
               steps {
                     bat 'docker run -p 8344:9421 devopsdemo.jar'
               }
        }


    }
}
