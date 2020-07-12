# The Server Behind mxrt.de

This repository contains documentation for my virtual private server at mxrt.de.
It should be easy to re-create all functionality on a different machine, as well as make changes to existing configurations
and roll back changes.

The functionality is provided by **services** and **applications**, where services are used by multiple applications.
Services are usually running on the base system, managed via systemd services and may speak to the outside directly, while applications can also be managed by docker-compose or similar means and must not talk with the outside world directly.

## Users

This lists only users that are used via ssh, each application or service should usually use its
own user.

### root

Should never be used. Login via ssh forbidden.

### admin

Only account with sudo privileges, exactly two authorized keys, corresponding to exactly three yubikeys (key chain, PC and backup).
Is in groups `admin, caddyadmin`

### max

"regular" user, no sudo privileges. Can have multiple authorized keys 
(yubikeys key chain, pc, nano, maybe even key files).

### git

used via gitea, authorized keys are handled by gitea, details TBD.

## Services

### sshd

- Logins are only allowed by public key. 
- Logins as `root` are forbidden.
- Listens on the standard port `22`.
- authorized keys for `admin` are owned by `admin`. Should be exactly three.
- authorized keys for `max` are owned by `max` himself
- ssh forwarding for gitea, TBD
- fail2ban is configured in the debian default


### caddy (http server / reverse proxy)

- runs as user `caddy`
- locked down as much as possible via systemd
- Handles connections on ports `80` and `443`.
    - upgrades incoming http to https
    - terminates ssl
    - automatically gets certificates from let's encrypt
    - only acts as proxy to applications and services
- update config with `curl --unix-socket /run/caddy/api.sock http://localhost/load -X POST -H "Content-Type: application/json" -d @config.json`

#### Paths/Permissions

-  binary: 
    - `-rwxr-xr-x 1 admin admin 34111488 Mai  4 18:51 /usr/bin/caddy`
-  home dir: 
    - `drwx------  5 caddy caddy 4096 Mai 23 17:51 /var/lib/caddy`
- service file: 
    - `-rw-r--r-- 1 admin admin 896 Mai 23 17:45 /etc/systemd/system/caddy.service`
    - see `caddy/caddy.service`
- admin api (unix socket): 
    - `srw-r----- 1 caddy caddyadmin 0 Mai 23 17:51 /run/caddy/api.sock`
 

#### Updating


#### Configuration

To confi

### docker


### postgresql

### Backup


## Applications

### Nextcloud

### git / gogs

### pgadmin

### Dashboard

### Site Health

### Static Page

### Tiddly Wiki

### rss2mail

some replacement for blogtrottr


### etherpad

### Link Shortener

## Security
