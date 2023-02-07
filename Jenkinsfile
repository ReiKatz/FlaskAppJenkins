pipeline {
    agent any
    
    stages {
        stage('Cloning Git') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '', url: 'https://github.com/ReiKatz/FlaskAppJenkins.git']]])     
            }
        }
        stage('Building image') {
            steps{
                script {
                    dockerImage = docker.build 
                }
            }
        }
        //stage('Deploy') {
            //steps {
                //script{
                        //docker.withRegistry('https://639771291841.dkr.ecr.eu-west-1.amazonaws.com/jenkinsflask', 'ecr:eu-west-1:aws-credentials') {
                    //dockerImage.push("${env.BUILD_NUMBER}")
                    //dockerImage.push("latest")
                //}
            //}
        //}    
    //}        
}
}
