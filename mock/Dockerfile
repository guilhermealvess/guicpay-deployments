FROM node:alpine

WORKDIR /data

COPY db.json .

RUN npm install -g json-server

EXPOSE 3000

CMD [ "npx", "json-server", "--port", "3000", "db.json" ]
