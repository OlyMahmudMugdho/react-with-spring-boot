pipeline {
    environment {
        registry = "olymahmudmugdho/react-with-spring-boot"
        registryCredential = 'dockerhub'
        dockerImage = ''
    }
    agent {
        docker {
            image 'olymahmudmugdho/maven-docker:3.98-temurin-21-jammy'
        }
    }
    stages {
        stage('Cloning our Git') {
            steps {
                git branch: 'main', url: 'https://github.com/OlyMahmudMugdho/react-with-spring-boot.git'
            }
        }

        stage('Building maven') {
            steps {
                sh './mvnw clean install'
            }
        }

        stage('Building the image') {
            steps {
                script {
                    dockerImage = docker.build registry
                }
            }
        }
        stage('Deploy the image') {
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
                sh "docker rmi $registry"
            }
        }
    }
}