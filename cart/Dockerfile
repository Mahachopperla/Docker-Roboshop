FROM node:20-alpine3.21 AS builder
WORKDIR /opt/server
COPY package.json ./
COPY *.js ./
RUN npm install


FROM node:20-alpine3.21
RUN addgroup -S roboshop && adduser -S roboshop -G roboshop
USER roboshop
WORKDIR /opt/server
COPY --from=builder --chown=roboshop:roboshop /opt/server /opt/server
CMD ["node","server.js"]