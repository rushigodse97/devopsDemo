pipeline {
    agent any

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
