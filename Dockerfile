# Utiliser une image de base officielle de Node.js
FROM node:14

# Créer et changer de répertoire de travail
WORKDIR /usr/src/app

# Copier le fichier package.json et installer les dépendances
COPY package*.json ./
RUN npm install

# Copier le reste des fichiers de l'application
COPY . .

# Exposer le port de l'application
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["npm", "start"]
