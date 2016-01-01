## Docker: Debian - NGINX Web Server

**Dockerfile** of [Debian](https://www.debian.org/) [NGINX](https://www.nginx.com/) web server.

*Based on the official NGINX [Dockerfile](https://github.com/nginxinc/docker-nginx).

*Requirements*
- [Docker](https://www.docker.com/) 

*Base Docker Image:*
- [debian:jessie](https://hub.docker.com/_/debian/)

### Development

        $ docker-compose build

Builds the `ws` service in `docker-compose.yml`.

It creates an image with the name `dockerdebiannginx_ws` and the tag `latest`.

    $ docker images
    # dockerdebiannginx_ws latest f1643e5cdd6f 2 minutes ago 133.9 MB

### Usage

    $ docker-compose up -d

Creates and starts a container with the name `dockerdebiannginx_ws_1`.

    $ docker ps -a
    # ... dockerdebiannginx_ws "nginx" ... dockerdebiannginx_ws_1

After a few seconds, open `http://<machine_ip>:8080`.

### Host Mapping

Volumes are mapped to host `./volumes/`.
- `/var/cache/nginx`
- `/var/log/nginx`
- `/var/www/`
