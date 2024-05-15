FROM node:16-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm install -g serve && REACT_APP_BACKEND_URL=http://localhost:5001 npm run build && adduser --disabled-password appuser && chown appuser .

USER appuser

EXPOSE 5000

CMD serve -s -l 5000 build

