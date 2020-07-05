FROM node:14.0-alpine3.11

WORKDIR /usr/app

COPY package.json .

RUN npm install --production --quiet

COPY .next/ ./.next/

COPY public/ ./public/

CMD npm run start
