# Utilisez l'image OpenJDK officielle en tant qu'image de base
FROM openjdk:11-jre-slim

# Copiez le JAR de l'application dans l'image Docker
COPY target/test.jar /app.jar

# Exposez le port 8888 sur lequel l'application écoute
EXPOSE 8888

# Commande pour démarrer l'application lors du lancement du conteneur
CMD ["java", "-jar", "/app.jar"]
