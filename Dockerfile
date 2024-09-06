FROM node:20-alpine

WORKDIR /app

COPY ./src ./src
COPY package*.json ./
COPY . .

RUN npm install -g @angular/cli && npm install

EXPOSE 4200

CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "4200"]
