#base image node alpine
FROM node:12-alpine
WORKDIR /home/node/ 
COPY package.json ./
RUN npm install 

#run ng build and copy distributable files to image context
RUN npm run build
COPY /dist/Angular2ECS .
COPY server.js .
COPY buildspec.yml .

#expose port 3000
EXPOSE 3000

#run server js
CMD ["node", "server.js"]