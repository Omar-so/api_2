FROM node:18-slim

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y python3 python3-pip && rm -rf /var/lib/apt/lists/*

COPY package*.json ./
RUN npm install

RUN pip3 install requests beautifulsoup4 lxml

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]
