FROM node:8-alpine

LABEL maintainer "Giacomo Triggiano <giacomo@creativecoding.it>"

COPY package.json /package.json

RUN npm install

COPY .ngrok.yml /root/.ngrok2/ngrok.yml
COPY index.js /index.js

EXPOSE 4040

CMD ["npm", "start"]
