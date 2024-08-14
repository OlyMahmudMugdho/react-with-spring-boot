pipeline {
    environment {
        registry = "olymahmudmugdho/react-with-spring-boot"
        registryCredential = 'dockerhub'
        dockerImage = ''
    }
    agent any
    stages {
        stage('Cloning our Git') {
            steps {
                git branch: 'main', url: 'https://github.com/OlyMahmudMugdho/react-with-spring-boot.git'
            }
        }

        stage('Building maven') {
            steps {
                sh 'mvn clean install'
            }
        }

        stage('Building our image') {
            steps {
                script {
                    dockerImage = docker.build registry
                }
            }
        }
        stage('Deploy our image') {
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('Cleaning up') {
            steps {
                sh "docker rmi $registry:$BUILD_NUMBER"
            }
        }
    }
}