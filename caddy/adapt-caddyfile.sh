#!/bin/bash

caddy adapt | jq .apps > conf.apps.json

sudo curl http://localhost/config/app --unix-socket /run/caddy/api.sock -X POST -H "Content-Type: application/json" -d @conf.app.json