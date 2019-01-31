# stage 1
FROM node:latest as node
WORKDIR /app
COPY package.json /app
COPY yarn.lock /app
RUN yarn install
COPY . /app
RUN yarn --version
RUN yarn run build

# stage 2
FROM nginx:alpine
COPY --from=node /app/dist/* /usr/share/nginx/html


