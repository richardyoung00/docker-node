FROM node:0.12.14

EXPOSE 3000

RUN mkdir -p /usr
WORKDIR /usr

COPY package.json /usr

#Only required for dogey connections
RUN npm config set strict-ssl false

RUN npm install

COPY . /usr

CMD [ "npm", "start" ]