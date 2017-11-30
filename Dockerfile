FROM node:latest

RUN mkdir /usr/src/app
VOLUME ["/app"]
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app

RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 6565
CMD [ "node", "index.js" ]
