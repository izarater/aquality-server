FROM node:16

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package.json /usr/src/app/

RUN npm install
RUN npm install nodemon
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . /usr/src/app

EXPOSE 4000
CMD bash -c "npm run dev"
