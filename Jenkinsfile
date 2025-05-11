pipeline {
    agent any

    tools {
        maven 'maven'       // Ensure this is configured in Global Tool Configuration
        jdk 'java-11'       // Ensure this is configured in Global Tool Configuration
    }

    environment {
        DOCKER_IMAGE = 'manjukolkar007/my-tomcat-webapp'
        DOCKER_REGISTRY = 'docker.io'
        DOCKER_CREDENTIALS_ID = 'docker-hub-credentials'
        IMAGE_TAG = "${DOCKER_REGISTRY}/${DOCKER_IMAGE}:latest"
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
                script {
                    sh "docker build -t ${IMAGE_TAG} ."
                }
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
                sh "docker push ${IMAGE_TAG}"
            }
        }

        stage('Deploy to Tomcat (Dockerized)') {
            steps {
                script {
                    sh '''
                        docker rm -f c1 || true
                        docker run -it -d --name c1 -p 9001:8080 ${IMAGE_TAG}
                    '''
                }
            }
        }

        stage('Health Check') {
            steps {
                sh 'sleep 10'  // Give time for Tomcat to start
                sh 'curl --fail http://localhost:8080 || exit 1'
            }
        }
    }

    post {
        always {
            echo 'Cleaning up unused Docker resources...'
            sh 'docker system prune -f || true'
        }
        success {
            echo '✅ Build and deployment succeeded!'
        }
        failure {
            echo '❌ Build or deployment failed.'
        }
    }
}
