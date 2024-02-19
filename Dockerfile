FROM node:version

ENV NODE_ENV=ENV Name (Dev or Prod)

WORKDIR /app

COPY package*.json ./

RUN yarn install

COPY . .

RUN yarn build

EXPOSE 1337

CMD ["yarn", "develop"]  #if dev env

CMD ["yarn", "start" ]  #if prod env