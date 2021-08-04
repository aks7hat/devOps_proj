pipeline {
    agent any
    environment{
        dockerImage=""
        registry='aks07hat/devopsprojectDevelopBranch'
        registryCredentials='docker'
    }
    stages {
        stage('git repo & clean') {
            steps {
//                 bat "rmdir  /s /q devOps_proj"
                bat "git clone https://github.com/aks7hat/devOps_proj.git"
                bat "mvn clean -f demosampleapplication"
            }
        }
        stage('install') {
            steps {
                bat "mvn install -f demosampleapplication"
            }
        }
        stage('test') {
            steps {
                bat "mvn test -f demosampleapplication"
            }
        }
        stage('package') {
            steps {
                bat "mvn package -f demosampleapplication"
            }
        }
        stage('Build Docker image'){
            steps{
                 script{
                        dockerImage = docker.build registry
                    }
                }                
            }  
        stage('Uploading image'){
            steps{
                script{
                    docker.withRegistry('',registryCredentials){
                        dockerImage.push()
                    }
                }
            }
        }
//         stage('Docker Stop if already running'){
//             steps{
//                 sh 'docker ps -f name=devopsprojectContainer -q | xargs --no-run-if-empty docker container stop'
//                 sh 'docker container ls -a -fname=devopsprojectContainer -q | xargs -r docker container rm'
//             }
//         }        
        stage('Docker Run'){
            steps{
                script{
                    dockerImage.run("-p 8090:7100 --rm --name devopsprojectContainer")
                }
            }
        }
    }
}
