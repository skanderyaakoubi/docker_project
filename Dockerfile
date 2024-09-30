# Utiliser une image de base légère avec Python préinstallé
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers de votre application dans le répertoire de travail
COPY . /app

# Installer les dépendances de l'application
# On s'attend à ce que votre projet ait un fichier requirements.txt listant les dépendances
RUN pip install flask

# Exposer le port sur lequel Flask fonctionnera
EXPOSE 5000

# Commande pour démarrer l'application Flask
CMD ["python", "app.py"]
