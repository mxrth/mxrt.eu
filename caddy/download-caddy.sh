#!/bin/bash

asset="caddy_${1}_linux_amd64.tar.gz"
url="https://github.com/caddyserver/caddy/releases/latest/download/${asset}"

curl -OL $url
tar -zxvf $asset caddy
