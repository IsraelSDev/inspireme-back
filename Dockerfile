    # Usa a imagem oficial do Node.js
    FROM node:20

    # Define o diretório de trabalho
    WORKDIR /app

    # Copia os arquivos necessários
    COPY ./inspireme-api/ package*.json /app/

    RUN ls -la /app/

    RUN npm install

    # Copia o restante do código
    COPY . .

    # Expõe a porta usada pelo NestJS
    EXPOSE 3000

    # Comando para rodar o backend
    CMD ["npm", "run", "start"]
