### STAGE 1: Build ###

FROM node:17-alpine AS build

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

RUN npm run build

### STAGE 2: Run ###

FROM nginx:1.17.1-alpine

COPY --from=build /usr/src/app/dist/finance_frontend /usr/share/nginx/html
