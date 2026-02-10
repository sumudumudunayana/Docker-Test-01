#Select the base image
FROM node:20-alpine

#Set the working directory inside docker
WORKDIR /app

#Copy the files by giving source and destination
COPY . .

#Run the app
CMD [ "node", "index.js"]

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