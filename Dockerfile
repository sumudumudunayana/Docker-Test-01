#Select the base image
FROM node:20-alpine

#Set the working directory inside docker
WORKDIR /app

COPY package.json .

RUN npm install

#Copy the files by giving source and destination
COPY . .

#Run the app
#CMD [ "node", "index.js"]
CMD [ "npm", "start"]

#To build the image run this command (docker build -t app-name app-location)
#docker build -t first-image .

#To check the images run this command
#docker images

#To create a container run this command (docker run image-name)
#docker run first-image

#To give a name to the container (docker run --name container-name image-name)
#docker run --name first-container first-image

#To check the running containers
#docker ps

#To check all the containers (running + stopped)
#docker ps -a

#To get the changes in the files to container we use nodemon
#npm i nodemon

#To run the program with nodemon add a start script in package.json
# "start": "nodemon -L index.js" 

#Now run the program
#npm start

#now change the starting command in Dockerfile to
#CMD [ "npm", "start"]

#Copy the package.json file to the container and install the dependencies
#COPY package.json .

#Install the dependencies
#RUN npm install

#To remove all images and containers
#docker system prune -a

#To run a docker container with a volume 
#docker run --name new-container --rm -v /app/node_modules -v ${PWD}:/app new-image
