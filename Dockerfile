FROM node:12-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN yarn install 
RUN npm build
COPY /dist/Angular2ECS .
COPY server.js /usr/src/app

EXPOSE 3000

CMD ["node", "server.js"]