FROM node:16-slim
WORKDIR /starter
COPY package*.json ./
RUN npm install pm2 -g
RUN npm install
COPY . .
CMD ["pm2-runtime", "app.js"]
EXPOSE 8080
