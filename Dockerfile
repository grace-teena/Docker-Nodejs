FROM alpine:3.8

RUN mkdir /var/NodejsApp

WORKDIR /var/NodejsApp

COPY . .

RUN apk update

RUN apk add --no-cache nodejs npm

RUN npm install

EXPOSE 8080

CMD ["node","app.js"]
