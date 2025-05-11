pipeline {
    agent any

    tools {
        maven 'maven'      // Make sure 'maven' is configured under Global Tool Configuration
        jdk 'java-11'      // Make sure 'java-11' is configured under Global Tool Configuration
    }

    environment {
        DOCKER_IMAGE = 'manjukolkar007/my-tomcat-webapp'
        DOCKER_REGISTRY = 'docker.io'
        DOCKER_CREDENTIALS_ID = 'docker-hub-credentials'  // Jenkins credentials ID for Docker Hub
    }

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/manjukolkar/java-app.git'
            }
        }

        stage('Maven Build') {
            steps {
                sh 'mvn clean install -DskipTests'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ${DOCKER_REGISTRY}/${DOCKER_IMAGE}:latest .'
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: "${DOCKER_CREDENTIALS_ID}", passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
                    sh "echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin"
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                sh 'docker push ${DOCKER_REGISTRY}/${DOCKER_IMAGE}:latest'
            }
        }

        stage('Deploy to Tomcat (Dockerized)') {
            steps {
                sh '''
                    docker rm -f tomcat-webapp || true
                    docker run -d --name tomcat-webapp -p 8080:8080 ${DOCKER_REGISTRY}/${DOCKER_IMAGE}:latest
                '''
            }
        }
    }

    post {
        success {
            echo '✅ Build and deployment succeeded!'
        }
        failure {
            echo '❌ Build or deployment failed.'
        }
    }
}
