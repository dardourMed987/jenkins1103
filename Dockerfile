# Utilisation de l'image AdoptOpenJDK 17 comme base
FROM openjdk:17-oracle

# Définition du répertoire de travail dans le conteneur
WORKDIR /app

# Copie du fichier JAR depuis le répertoire target du projet vers le répertoire de travail dans l'image Docker
COPY ./target/projetJenkins1103-0.0.1-SNAPSHOT.jar /app/projetJenkins1103-0.0.1-SNAPSHOT.jar
