FROM node:7.7.4-alpine

LABEL maintainer "franzwagner.str@gmail.com"

COPY package.json /package.json
RUN npm install

COPY .ngrok.yml /root/.ngrok2/ngrok.yml
COPY index.js /index.js

EXPOSE 4040

CMD npm start
