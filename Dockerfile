FROM node:18.14.2

WORKDIR /app

COPY package*.json ./

RUN python3 -m pip

RUN npm install

COPY . .

EXPOSE 6982

CMD ["npm", "start"]