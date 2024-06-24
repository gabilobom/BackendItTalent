# Use a imagem oficial do Node.js versão LTS como base
FROM node:16

# Cria e define o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copia o package.json e package-lock.json (se existir) para o diretório de trabalho
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Copia todo o código-fonte para o diretório de trabalho
COPY . .

# Expõe a porta 8080 para fora do container
EXPOSE 8090

# Comando padrão a ser executado quando o container for iniciado
CMD ["npm", "start"]
