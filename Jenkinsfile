

pipeline {
    agent any
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/jesusmendozahuillca/devops-jenkins.git']]])
                sh export M2_HOME=/opt/apache-maven-3.3.9 # your Mavan home path
                sh export PATH=$PATH:$M2_HOME/bin
                sh mvn --version
                sh mvn clean install
            }
        }
        
    
    }
}
