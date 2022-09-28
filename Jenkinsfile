

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
                
                sh 'mvn --version'
            }
        }
    }
}
