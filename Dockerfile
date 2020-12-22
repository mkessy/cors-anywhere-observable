FROM node:15.3.0-buster

WORKDIR /app/
COPY package*.json /app/
RUN npm install

COPY . /app

EXPOSE 8080

ENTRYPOINT ["node", "/app/server.js"]

