# Imagen base
FROM node:18-alpine

# Carpeta de la app en contenedor
WORKDIR /app

# Copiar package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar todo el código al contenedor
COPY . .

# Exponer puerto
EXPOSE 3000

# Comando para iniciar la app
CMD ["node", "app.js"]
