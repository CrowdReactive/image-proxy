FROM node

RUN apt-get update && apt-get install imagemagick

COPY package.json /src/package.json
WORKDIR /src
RUN npm install

COPY . /src

EXPOSE 5000

CMD npm start
