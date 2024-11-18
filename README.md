# The Server Behind mxrt.de

This repository contains documentation for my private server at mxrt.de.


## Network

### v4
* Public IP: 144.76.225.41
  * Open Ports: 
    * 22/TCP (sshd)
    * 80/TCP (caddy) 
    * 443/TCP (caddy)
    * 51820/UDP (wireguard, invisible)
* Wireguard subnet: 10.0.0.1/24
  * Open Ports: 
    * 80/TCP (caddy)
* Podman net_pub:  
  * 10.1.0.0/24
* Podman net_wg:
  * 10.2.0.0/24
* DNS Nameserver: 185.12.64.2, 185.12.64.1 (Hetzner Default)

TODO: show this as part of `admx status net`



## Infrastructrue

### SSH

### Wireguard

### Caddy

## Services

### paperless-ngx