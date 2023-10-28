FROM node:17

WORKDIR /usr/src/app

COPY package.json hello-world-app.js hello-world-deploy.sh ./

RUN npm install

RUN npm run build

EXPOSE 3000

CMD [ "node", "hello-world-app.js" ]