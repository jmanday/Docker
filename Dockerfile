FROM node:argon
MAINTAINER Jesús García Manday "jmanday@gmail.com"

# Update de argon
RUN apt-get update

# Install git
RUN apt-get install git

# Install mongoDB
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.0 main" | tee /etc/apt/sources.list.d/mongodb-org-3.0.list
RUN apt-get update
RUN apt-get install -y mongodb-org

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Download the source project
RUN git clone https://github.com/jmanday/MEAN.git

# Install app dependencies
RUN cp -r ./MEAN/Proyecto2/* /usr/src/app/
RUN rm -rf ./MEAN
RUN npm install

# Bundle app source
#COPY . /usr/src/app

EXPOSE 3000
CMD ["npm", "start" ]
