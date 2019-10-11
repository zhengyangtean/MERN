FROM node:10

# Create app directory
WORKDIR /usr/src/frontend

# Install app dependencies
COPY . /usr/src/

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "npm", "start"]
