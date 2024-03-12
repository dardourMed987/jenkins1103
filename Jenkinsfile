pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Récupérer le code source depuis le référentiel Git
                git 'https://github.com/dardourMed987/jenkins1103.git'
            }
        }
        
        stage('Build') {
            steps {
                // Utiliser Apache Maven pour construire l'application
                sh 'mvn clean package'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                // Construire l'image Docker en utilisant le Dockerfile dans le répertoire courant
                script {
                    docker.build("my-docker-image:${BUILD_ID}")
                }
            }
        }
        
        stage('Test') {
            steps {
                // Exécuter les tests unitaires
                sh 'mvn test'
            }
        }
        
        stage('Cleanup') {
            steps {
                // Supprimer l'image Docker
                script {
                    docker.image("my-docker-image:${BUILD_ID}").remove(force: true)
                }
            }
        }
    }
}
