pipeline {
    agent { docker { image 'python:3.10.7-alpine' } }
    
    environment {
        registry = "639771291841.dkr.ecr.eu-west-1.amazonaws.com/jenkins_repo"
    }
    stages {
        stage('python version') {
            steps {
                sh 'python --version'
            }
        }
        stage('Building image') {
            steps{
                script {
                    dockerImage = docker.build registry
                }
            }
        }
    }        
}
