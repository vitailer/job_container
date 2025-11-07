FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.sk4r3bj.mongodb.net
ENV MONGODB_USERNAME vmendelcuk
ENV MONGODB_PASSWORD pigmalion1005

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]