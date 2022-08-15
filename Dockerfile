FROM node:14.17.0
RUN apt update && mkdir /usr/src/app
WORKDIR /usr/src/app
RUN npm install \
    && npm install \
    && npm install --save-dev typescript @types/react @types/node \
    && npm install -g sass moment create-react-app create-next-app

