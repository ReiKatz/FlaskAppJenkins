pipeline {
    agent any
    
    stages {
        //stage('Cloning Git') {
            //steps {
                //checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '', url: 'https://github.com/ReiKatz/FlaskAppJenkins.git']]])     
            //}
        //}
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
                    sh "docker push '${registry}:2'"
                }
            }
        }    
    }        
}
