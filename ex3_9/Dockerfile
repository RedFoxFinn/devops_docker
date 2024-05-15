FROM golang:1.16-alpine AS builder

RUN apk update && apk add --no-cache git ca-certificates tzdata && update-ca-certificates

ENV USER=appuser
ENV UID=10001

RUN adduser --disabled-password --gecos "" --home "/nonexistent" --shell "/sbin/nologin" --no-create-home --uid "${UID}" "${USER}"

WORKDIR $GOPATH/src/mypackage/app

COPY . .

RUN go get -d -v

ENV REQUEST_ORIGIN="http://localhost:5000"

RUN GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o /go/bin/backend

FROM scratch

COPY --from=builder /usr/share/zoneinfo /usr/share/zoneinfo
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=builder /etc/passwd /etc/passwd
COPY --from=builder /etc/group /etc/group
COPY --from=builder /go/bin/backend /go/bin/backend

USER appuser:appuser

EXPOSE 8080

ENTRYPOINT ["/go/bin/backend"]
