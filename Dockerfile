FROM node:22-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or npm-shrinkwrap.json)
COPY package*.json ./

# Install app dependencies
RUN npm ci --only=production

COPY . .

EXPOSE 5000

# Define the command to run your app
CMD [ "npm", "start" ]