FROM node:16-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci

COPY . .

RUN REACT_APP_BACKEND_URL=http://localhost:5001 npm run build && rm -f package*.json && rm -rf node_modules/ public/ src/ && npm install -g serve && adduser --disabled-password appuser && chown appuser .

USER appuser

EXPOSE 5000

CMD serve -s -l 5000 build

