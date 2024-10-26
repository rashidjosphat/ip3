FROM node:16-alpine as build

WORKDIR /app1

COPY ./package*.json ./

RUN npm install --production

COPY . .

EXPOSE 5000

CMD [ "sh", "-c", "node server.js" ]