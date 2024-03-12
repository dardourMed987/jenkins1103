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
        
        stage('Test') {
            steps {
                // Exécuter les tests unitaires 2
                sh 'mvn test'
            }
        }
        
        stage('Deploy') {
            steps {
                // Exemple d'étape de déploiement
                echo 'Déploiement de l\'application...'
                // Ajoutez vos commandes de déploiement ici
            }
        }
    }
}
