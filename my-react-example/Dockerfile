FROM node:20

WORKDIR /usr/src/app

COPY package.json .

RUN npm install
RUN npm install -g vite serve

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["serve", "-s", "dist"]
