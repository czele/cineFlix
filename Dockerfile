FROM node:20.16.0-alpine3.20

RUN apk add --no-cache \
    git \
    python3 \
    make \
    g++

RUN npm install -g @angular/cli typescript

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 4200

#CMD ["ng", "serve", "--host", "0.0.0.0"]