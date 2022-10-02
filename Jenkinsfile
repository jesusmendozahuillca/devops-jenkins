pipeline {
    agent any
    tools {
        maven 'maven-3.6.3'
    }
    options {
        skipDefaultCheckout()
    }
    stages{
    	stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/jesusmendozahuillca/devops-jenkins.git']]])
                bat 'mvn clean install'
            }
        }
     
     stage('Build docker image'){
            steps{
                script{
                    bat 'docker build -t mendozacorp/anime-devops-integration .' 
                }
            }
        }
        
        
        stage('Push docker image'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'docker-hub-password', variable: 'dockerhub-pwd')]) {
                       bat 'docker login -u jmendoza4633 -p ${dockerhub-pwd}'
                    }
                    bat 'docker push jmendoza4633/anime-corp-repository'
                }
            }
        }
        
    }
}
