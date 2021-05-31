FROM node:latest as node

WORKDIR /usr/src/app/simple-twitch

COPY package*.json ./

RUN npm install -g @angular/cli @angular-devkit/build-angular && npm install

EXPOSE 4201

CMD ["npm", "start"]