FROM node:17

WORKDIR /usr/src/app

COPY package.json second-app.js hello-world-deploy.sh ./

RUN npm install

RUN npm run build

EXPOSE 8080

CMD [ "node", "second-app.js" ]