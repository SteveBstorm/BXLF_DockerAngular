FROM node:20-alpine

WORKDIR /app

COPY ./src ./src
COPY package*.json ./
COPY . .

RUN npm install -g @angular/cli
RUN npm install

EXPOSE 4200

CMD ["ng", "serve", "--port","4200","--host","0.0.0.0"]
