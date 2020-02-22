FROM golang:1.13 AS build

#TODO: run caddy in a smaller container

RUN go get github.com/caddyserver/caddy/v2

WORKDIR /caddy

COPY ./caddyfile .

RUN ["caddy", "run"]


