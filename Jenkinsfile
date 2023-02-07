pipeline {
    agent any
    
    environment {
        registry = "639771291841.dkr.ecr.eu-west-1.amazonaws.com/jenkinsflask"
    }
    stages {
        stage('Cloning Git') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '', url: 'https://github.com/ReiKatz/FlaskAppJenkins.git']]])     
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
