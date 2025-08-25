# Usar una imagen base de Node.js (ajustar según tu stack)
FROM node:18-alpine

# Establecer directorio de trabajo
WORKDIR /app

# Copiar archivos de dependencias
COPY package*.json ./

# Instalar dependencias
RUN npm ci --only=production

# Copiar código fuente
COPY . .

# Exponer puerto (ajustar según tu app)
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["npm", "start"]
