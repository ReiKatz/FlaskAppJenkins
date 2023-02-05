pipeline {
    agent any
    
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
        stage("Build Docker Image") {
            steps {
                script {
                    def image = docker.build("image-name:tag", ".")
                }
            }
        }

        stage("Push Docker Image") {
            steps {
                script {
                    docker.withRegistry("https://registry-url", "docker-registry") {
                        image.push("latest")
                    }
                }
            }
        }    
    }
}
