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
        stage('Run Flask app') {
            steps {
                sh 'FLASK_APP=hello.py FLASK_ENV=development flask run'
            }
        }
        stage('Build Flask app') {
            steps {
                sh 'python hello.py install'
            }
        }    
    }
}
