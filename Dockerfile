#base image node alpine

FROM node:12-alpine
WORKDIR /home/node/ 
COPY package*.json ./
RUN yarn install 

#run ng build and copy distributable files to image context
RUN npm build --prod
COPY /dist/Angular2ECS .
COPY server.js .

#expose port 3000
EXPOSE 3000

#run server js
CMD ["node", "server.js"]