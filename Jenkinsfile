pipeline {
    agent any

    tools {
    maven 'maven-3.9.9'
    }

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Compile') {
                    steps {
                        bat 'mvn compile'
                    }
        }
    }
}
