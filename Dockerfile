# Usa una imagen oficial de Node
FROM node:18-alpine

# Crea y entra a la carpeta de la app
WORKDIR /app

# Copia todos los archivos del repo
COPY . .

# Instala el paquete "serve" para servir archivos estáticos
RUN npm install -g serve

# Expone el puerto que Render asigna
EXPOSE 10000

# Comando de inicio (Render reemplaza $PORT por su valor interno)
CMD ["sh", "-c", "serve -s . -l $PORT"]
