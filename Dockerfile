FROM node:10.23.1-alpine

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install dotenv

RUN npm install

# Bundle app source
COPY . .

# Trigger to send report to slack
CMD [ "npm", "test" ]