

pipeline {
    agent any
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/jesusmendozahuillca/devops-jenkins.git']]])
                sh 'mvn clean install'
            }
        }
        
    
    }
}
