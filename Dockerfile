FROM node:12.6.2

# Set app directory
WORKDIR /root/app

# environment variable

# Install app dependencies
COPY package.json /root/app/
RUN npm install --production --registry=https:registry.npm.taobao.org

# Bundle app source
COPY . /root/app/

# Build app source
RUN npm run build

EXPOSE 8080

CMD [ "npm start" ]
