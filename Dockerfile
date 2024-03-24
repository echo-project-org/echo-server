FROM node:18.14.2

WORKDIR /app

COPY package*.json ./

RUN apt-get update && apt-get install -y \
    build-essential \
    python3-pip

RUN npm install

COPY . .

EXPOSE 6982

CMD ["npm", "start"]