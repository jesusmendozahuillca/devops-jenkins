

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
                withMaven(maven : 'mave-3.6.3') {
                    sh 'mvn --version'
                }
                
            }
        }
    }
}
