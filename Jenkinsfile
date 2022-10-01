pipeline {
    agent any
    tools {
        maven 'mave-3.6.3'
    }
    options {
        skipDefaultCheckout()
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/jesusmendozahuillca/devops-jenkins.git']]])
                sh 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t mendozacorp/anime-devops-integration .' 
                }
            }
        }
    }
}
