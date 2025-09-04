FROM node:18-alpine

# create app directory
WORKDIR /usr/src/app

# copy package manifests first to leverage layer caching
COPY package*.json ./

# install only production dependencies (tests run in CI)
RUN npm install --production

# copy the rest of the app
COPY . .

ENV PORT=3000
EXPOSE 3000

CMD ["node", "app.js"]

