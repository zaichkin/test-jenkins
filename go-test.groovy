pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Build'
                sh "ls"
            }
        }
        stage('Test'){
            steps{
                echo 'Test'
            }
        }
    }
}