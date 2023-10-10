FROM node:18.16

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g pm2 ts-node

RUN npm ci

COPY . .

RUN npm run build

ENV NODE_ENV=production

RUN npm prune

EXPOSE 80

CMD [ "pm2-runtime", "build/index.js" ]