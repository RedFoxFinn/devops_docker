FROM golang:1.16-alpine

WORKDIR /usr/src/app

COPY . .

ENV REQUEST_ORIGIN="http://localhost:5000"

RUN go build

RUN adduser --disabled-password appuser && chown appuser .

USER appuser

EXPOSE 8080

CMD ./server
