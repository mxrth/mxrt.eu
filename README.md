# mxrt.de configuration


## projects
- base
    - provides basic services and network definitions:
        - caddy (reverse proxy and tls termination)
        - postgresql
- apps
    - provides applications like
        - nextcloud
        - gitlab
        - blog hosting
- dev
    - houses development projects and one-off experiments/staging



## Networks

Base defines the following networks:
    
- mxrtde_edge
    - only containers on this network should expose ports
    - only network reachable from the outer world
    - example containers:
        - reverse proxy
        - ssh server 
- mxrt_service
    - can connect to the internet
    - must not expose ports
    - typical containers:
        - webapps (nextcloud/gitea/...)
- mxrt_backend
    - not connected to the internet
    - must not expose ports
    - typical containers:
        - database server, ...


## Managing secrets


## Adding a new app

1. Create a new folder beneath one of the existing top level folders
1. Create a Dockerfile
    - Each container should have its own Dockerfile, even when just using a completed base image
    - do not use the Dockerfile to configure things better specified in the docker-compose file, such as exposed ports.
2. Add an entry to docker-compose.yml
    - give the app a meaningful name
    - register all volumes the app might need
2. Decide which network the app should have access to:
    - does it accept incoming connections? -> edge
    - does it talk to or provide backend services? -> backend
    - does it sit behind a reverse proxy? -> service
3. 

## Updating containers




