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
                    bat 'docker build -t jmendoza4633/anime-corp-repository:animev2 .' 
                }
            }
        }
        
        
        stage('Push docker image'){
            steps{
                script{
                    bat 'docker login -u jmendoza4633 -p SuperGirl2020'
                    bat 'docker push jmendoza4633/anime-corp-repository:animev2'
                }
            }
        }
        
    }
}
