pipeline {
    agent any
    stages {
        stage('git repo & clean') {
            steps {
//                bat "rmdir  /s /q demosampleapplication"
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
    }
}
