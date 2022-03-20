# The Server Behind mxrt.de

This repository contains documentation for my virtual private server at mxrt.de.
It should be easy to re-create all functionality on a different machine, as well as make changes to existing configurations
and roll back changes.

The functionality is provided by **system services**, **applications** and **backend services**, where services are used by multiple applications.
System services are usually running on the base system, managed via systemd services, while applications can also be managed by docker-compose or similar means. Backend services must not talk with the outside world directly.

## Users

This lists only users that are used via ssh, each application or service should usually use its
own user.

### root

Should never be used. Login via ssh forbidden.

### admin

Only account with sudo privileges, exactly three authorized keys, corresponding to exactly three yubikeys (key chain, PC and backup).
Is in groups `admin, docker`

### max

"regular" user, no sudo privileges. Can have multiple authorized keys 
(yubikeys key chain, pc, nano, maybe even key files).


## Services

### sshd

- Logins are only allowed by public key. 
- Logins as `root` are forbidden.
- Listens on the standard port `22`.
- authorized keys for `admin` are owned by `admin`. Should be exactly three.
- authorized keys for `max` are owned by `max` himself
- fail2ban is configured in the debian default





### Wireguard


## Podman



### Backup


## Applications (outwards facing)

Currently all applications are provisioned using docker/docker-compose
See folder `apps`

### caddy_web (http server / reverse proxy)

- Handles connections on ports `80` and `443`.
    - upgrades incoming http to https
    - terminates ssl
    - automatically gets certificates from let's encrypt
    - only acts as proxy to applications
    - does not offer any other functionality (we spin up a dedicated, reverse-proxied, container for that)

### Nextcloud

### git / gitea





### Static Page

### Tiddly Wiki

### rss2mail

some replacement for blogtrottr


### etherpad

### Link Shortener


## Admin Applications (only via VPN)

### caddy_vpn

### pgadmin

### Dashboard

### Site Health

### Portainer

## Security
