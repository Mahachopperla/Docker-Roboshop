FROM node:20-alpine3.21
# once nodejs installed we'll download app content to /app in doc. but we know linux folder structure in which
# 3rd party applications should be stored in /opt
# so from now we are going to follow better practise
RUN addgroup -S roboshop && adduser -S roboshop -G roboshop
USER roboshop
WORKDIR /opt/server
COPY package.json ./
COPY *.js ./
RUN npm install
ENV MONGO="true" \
    MONGO_URL="mongodb://mongodb:27017/catalogue"
CMD ["node","server.js"]
