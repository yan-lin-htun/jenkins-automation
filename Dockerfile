FROM node:version

ENV NODE_ENV=ENV Name  #(development or production)

WORKDIR /app

COPY package*.json ./

RUN yarn install

COPY . .

RUN yarn build

EXPOSE 1337

CMD ["yarn", "develop"]  #if development env

CMD ["yarn", "start" ]  #if production env