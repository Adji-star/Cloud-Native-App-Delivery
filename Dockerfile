# Image de base légère Node.js Alpine
FROM node:18-alpine

# Répertoire de travail dans le conteneur
WORKDIR /app

# Copier d'abord package.json pour optimiser le cache Docker
COPY package.json .

# Installer les dépendances
RUN npm install --production

# Copier le reste du code source
COPY . .

# Exposer le port de l'application
EXPOSE 3000

# Commande de démarrage
CMD ["node", "server.js"]