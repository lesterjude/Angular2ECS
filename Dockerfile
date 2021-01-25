#base image node alpine
FROM node:12-alpine AS ui-source
#set working directory for building source application
WORKDIR /usr/src
#copy all source code to WORKDIR
COPY . .
#run yarn install
RUN npm install && npm run build

FROM node:12-alpine AS ui-build
#set work directory to the root folder of the node 
WORKDIR /home/node/
#copy distributable files to image context
COPY --from=ui-source /usr/src/dist/Angular2ECS .
COPY server.js .
COPY buildspec.yml .
COPY package*.json .
COPY --from=ui-source /usr/src/node_modules ./node_modules

#expose port 3000
EXPOSE 3000

#run server js
CMD ["node", "server.js"]