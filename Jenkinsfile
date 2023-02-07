pipeline {
    agent { docker { image 'python:3.10.7-alpine' } }
    
    environment {
        registry = "639771291841.dkr.ecr.eu-west-1.amazonaws.com/jenkins_repo"
        repository = "jenkins-repo"
    }
    stages {
        stage('python versio') {
            steps {
                sh 'python --version'
            }
        }
        stage('Cloning Git') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '', url: 'https://github.com/ReiKatz/FlaskAppJenkins.git']]])     
            }
        }
        stage('Building image') {
            steps{
                script {
                    sh 'docker build -t $registry/$repository:$BUILD_NUMBER .'
                }
            }
        }
    }        
}
