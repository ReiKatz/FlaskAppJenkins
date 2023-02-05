pipeline {
    agent { docker { image 'python:3.10.7-alpine' } }
    stages {
        stage('python version') {
            steps {
                sh 'python --version'
            }
        }
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git url: 'https://github.com/ReiKatz/FlaskAppJenkins.git', branch: 'main'
            }
        }
    }
}
