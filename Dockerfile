FROM node:alpine as build
RUN apk add --no-cache git

WORKDIR /app
RUN git clone https://github.com/RemRem57/coddity.git
WORKDIR /app/coddity

RUN npm install
RUN npm run build

FROM nginx:1.19-alpine
COPY --from=build /app/coddity/public /usr/share/nginx/html