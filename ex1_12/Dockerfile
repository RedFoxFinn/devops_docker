FROM node:16

WORKDIR /usr/src/app

COPY . .

RUN npm install && npm install -g serve && REACT_APP_BACKEND_URL=http://localhost:5001 npm run build

EXPOSE 5000

CMD serve -s -l 5000 build

