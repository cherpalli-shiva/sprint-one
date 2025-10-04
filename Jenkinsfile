pipeline {
    agent any 

    tools {
        jdk 'jdk17'
        maven 'mvn'
    }

    environment {
        REGISTRY = "docker.io/cherpalli"
        APP_NAME = "petclinic"
        IMAGE_TAG = "${BUILD_NUMBER}"
    }
    stages {
        stage('Clean Workspace'){
            steps {
                cleanWs()
            }
        }
        stage('Checkout SCM') {
            steps {
                git branch:'main', url:'https://github.com/cherpalli-shiva/sprint-one.git'
            }
        }
        stage('Compile code') {
            steps {
                sh 'mvn clean compile'
            }
        }
        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('MySonarQube') {
                    sh 'mvn sonar:sonar'
                }
            }
        }
        stage('Quality Gate') {
            steps {
                script {
                    timeout(time: 5, unit:'MINUTES') {
                        waitForQualityGate abortPipeline: false
                    }
                }
            }
        }
        stage('Owasp Dependency Check') {
            steps {
                script {
                    dependencyCheck additionalArguments: '--scan ./ --format XML', odcInstallation: 'DP-Check'
                    dependencyCheckPublisher pattern:'**/dependency-check-report.xml'
                }
            }
        }
        stage('Build'){
            steps {
                sh 'mvn clean install -DskipTests'
            }
        }
        stage('Build Docker image') {
            steps {
                script {
                    withDockerRegistry(credentialsId:'docker', toolName: 'docker') {
                        sh 'docker build -t $REGISTRY/$APP_NAME:$IMAGE_TAG .'
                        sh 'docker push $REGISTRY/$APP_NAME:$IMAGE_TAG'
                    }
                }
            }
        }
        stage('Trivy') {
            steps {
                sh 'trivy image $REGISTRY/$APP_NAME:$IMAGE_TAG || true'
            }
        }
    }
}