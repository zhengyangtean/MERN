### setup front ###

FROM node:10 as frontend

# Create app directory
WORKDIR /usr/app/frontend

# Install app dependencies
COPY frontend/package*.json ./

RUN npm install -qy

COPY frontend/ ./

EXPOSE 3000

CMD ["npm", "start"]


### setup backend ###

FROM node:10 as backend

# Create app directory
WORKDIR /usr/app/backend

# Install app dependencies
COPY backend/package*.json ./

RUN npm install -qy

COPY backend/ ./

EXPOSE 4000
CMD [ "nodemon", "server"]