pipeline {
    agent any
    tools {
        maven 'mave-3.6.3'
    }
    options {
        skipDefaultCheckout()
    }
    stages{
        stage('Docker version'){
            steps{
                script{
                    sh 'docker --version' 
                }
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t mendozacorp/anime-devops-integration .' 
                }
            }
        }
        stage('Docker version2'){
            steps{
                script{
                    sh 'docker --version' 
                }
            }
        }
    }
}
