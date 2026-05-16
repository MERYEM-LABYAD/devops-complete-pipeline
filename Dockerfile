FROM python:3.11-slim
# Télécharge une image Python légère.

WORKDIR /app
# Crée un dossier /app dans le conteneur.

COPY app/requirements.txt .
# Copie le fichier dans le conteneur.

RUN pip install --no-cache-dir -r requirements.txt
# Installe Flask.

COPY app/ .
# Copie tous les fichiers du projet dans le conteneur.

EXPOSE 5000
# Indique que l’application utilise le port 5000.

CMD ["python", "app.py"]
# Commande lancée automatiquement au démarrage du conteneur.
