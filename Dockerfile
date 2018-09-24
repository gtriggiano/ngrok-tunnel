FROM node:8-alpine

LABEL maintainer "Giacomo Triggiano <giacomo@creativecoding.it>"

COPY package.json /package.json
COPY yarn.lock /yarn.lock
COPY ngrok.yml /ngrok.yml
COPY index.js /index.js

RUN yarn

EXPOSE 4040

CMD ["npm", "start"]
