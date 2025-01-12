FROM node:alpine
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
RUN yarn install
COPY . .
EXPOSE 1337
CMD ["yarn", "develop"]
