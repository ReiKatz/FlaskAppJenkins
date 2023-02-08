pipeline {
    agent any
    
    stages {
        stage('Building image') {
            steps{
                script {
                    def image = "abc"
                    sh "docker build -t '${image}' ."
                }
            }
        }
        stage('push the image to dockerhub') {
            steps {
                script {
                    def registry = "reikatz/app"
                    sh "docker login -u reikatz -p Aa123456123456"
                    sh "docker tag abc reikatz/app:latest"
                    sh "docker push reikatz/app:latest"
                }
            }
        }    
    }        
}
