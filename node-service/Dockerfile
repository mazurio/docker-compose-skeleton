FROM node:4.4.4-wheezy

ADD ./ /node-service/src
WORKDIR /node-service/src

RUN npm install

EXPOSE 45

CMD ["node", "index.js"]