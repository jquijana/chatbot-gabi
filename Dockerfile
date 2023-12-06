# Usa una imagen de Node.js
FROM node:18.16.0-alpine3.17

# Establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia los archivos del proyecto al contenedor
COPY package*.json ./
COPY dist/ ./dist/

# Instala las dependencias
RUN npm install --production

# Expone el puerto 3000
EXPOSE 3000

# Ejecuta la aplicación cuando se inicie el contenedor
CMD ["node", "dist/main"]