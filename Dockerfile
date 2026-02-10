#Select the base image
FROM node:20-alpine

#Set the working directory inside docker
WORKDIR /app

#Copy the files by giving source and destination
COPY . .

#Run the app
CMD [ "node", "index.js"]