pipeline {
    agent any
    tools {
        maven 'maven-3.6.3'
    }
    stages{
    	stage('git checkout'){

            steps{
                git branch: 'main', url: 'https://github.com/jesusmendozahuillca/devops-jenkins.git'
            }
        }
      stage('Maven Install'){

            steps{
                sh 'mvn clean install'
            }
        }    
       stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t imagen-corp-anime .' 
                }
            }
        }
        stage('Run docker image'){
            steps{
                script{
                    sh 'docker container ls --all'
                    sh 'docker stop anime-container || true && docker rm anime-container || true'
                    sh 'docker run -d --name animes-container -p9000:8080 imagen-corp-anime ' 
                }
            }
        }
        
        
    }
}
