FROM node:17-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
COPY public/ . 
COPY src/ .

EXPOSE 3000
CMD ["npm", "start"]
