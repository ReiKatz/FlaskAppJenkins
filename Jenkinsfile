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
        stage('Pushing to ECR') {
            steps{  
                script {
                    withAWS(credentials: "aws-credentials") {
                        sh 'aws configure set region ${AWS_REGION}'
                        sh 'aws configure set aws_access_key_id ${AWS_ACCESS_KEY_ID}'
                        sh 'aws configure set aws_secret_access_key ${AWS_SECRET_ACCESS_KEY}'
                    }
                    sh 'aws ecr get-login-password --region ${AWS_REGION} | docker login --username AWS --password-stdin 639771291841.dkr.ecr.eu-west-1.amazonaws.com'
                    sh 'docker push 639771291841.dkr.ecr.eu-west-1.amazonaws.com/jenkinsflask:latest'
                }
            }
        }    
    }        
}
