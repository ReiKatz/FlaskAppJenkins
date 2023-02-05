pipeline {
    agent { docker { image 'python:3.10.7-alpine' } }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
            }
        }        
        stage('Clone Git repository') {
            steps {
                git 'https://github.com/ReiKatz/FlaskAppJenkins.git'
            }
        }
        stage('Install dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Build Flask app') {
            steps {
                sh 'python hello.py install'
            }
        }
        stage('Test Flask app') {
            steps {
                sh 'python tests.py'
            }
        }
    }
}
