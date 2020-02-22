FROM golang:1.13


ENV GO111MODULE=on

WORKDIR /go/src/caddy
#TODO: run caddy in a smaller container

COPY ./main.go .
RUN go mod init caddy
RUN go get github.com/caddyserver/caddy/v2@v2.0.0-beta.14
RUN go build

COPY ./Caddyfile .

CMD ["/go/src/caddy/caddy", "run"]


