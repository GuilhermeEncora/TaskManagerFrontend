# Define a imagem base Node.js (versão de acordo com seu projeto)
FROM node:18

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o package.json e package-lock.json para instalar as dependências primeiro
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante do código fonte
COPY . .

# Define a porta que a aplicação frontend irá escutar
EXPOSE 8080

# Comando para iniciar a aplicação (ajuste para o comando do seu projeto)
CMD ["npm", "run", "dev"]