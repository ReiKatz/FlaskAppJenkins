pipeline {
    agent { docker { image 'python:3.10.7-alpine' } }
    stages {
        stage('python version') {
            steps {
                sh 'python --version'
            }
        }
        stage('Build Flask app') {
            steps {
                sh 'python hello.py install'
            }
        }    
    }
}
