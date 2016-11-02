FROM node:argon
MAINTAINER Jesús García Manday "jmanday@gmail.com"

# Update de argon
RUN apt-get update

# Install curl
RUN apt-get install wget

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
RUN wget https://github.com/jmanday/MEAN/blob/master/Proyecto2/package.json
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080
CMD [ "npm", "start" ]
