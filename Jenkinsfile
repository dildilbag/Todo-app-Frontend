pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "java --version"
            }
        }
        stage('Test') {
            steps {
                sh "java --version"
            }
        }
        stage('Release'){
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhubcredentails', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]){
                  sh'''
                  docker login -u $USERNAME -p $PASSWORD
                  docker build -t 152028/java-demo:${BUILD_NUMBER} .
                  docker push 152028/java-demo:${BUILD_NUMBER}
                  ''' 

               
                  
           
                }
            }
        }
    }}