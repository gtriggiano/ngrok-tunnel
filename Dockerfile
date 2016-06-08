FROM node:5

MAINTAINER Giacomo Triggiano <giacomo@creativecoding.it>

ADD package.json /package.json
RUN npm install

ADD .ngrok.yml /root/.ngrok2/ngrok.yml
ADD index.js /index.js

EXPOSE 4040

CMD npm start
