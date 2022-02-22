FROM node:12

# Create app directory
WORKDIR /usr/src/app

COPY sequelize-express/package*.json ./

RUN npm install

RUN npm install -g sequelize-cli

COPY sequelize-express/. .

EXPOSE 8080
CMD [ "npm", "run", "dev" ]