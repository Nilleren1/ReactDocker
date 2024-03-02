#base image from nodejs version 17
FROM node:17-alpine

#set the working directory
WORKDIR /app

#Copy the package.json and package-lock.json to the working directory
COPY package*.json ./

#install the dependencies
RUN npm install

#Copy the rest of the files to the working directory
COPY . .

#start the app
CMD ["npm", "start"]


# docker run -p 3000:3000 react-test
# docker build -t react-test .