FROM ubuntu
# This is a base image


#This is how to install node on ubuntu layer
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs


#copy my project file to container and mapping it 
COPY package.json package.json
COPY package-lock.json package-lock.json
COPY main.js main.js

#Run command npm install to install all packages inside container
RUN npm install

#When ever image is run run the node server in main.js
ENTRYPOINT [ "node", "main.js" ]