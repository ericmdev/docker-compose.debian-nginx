## Docker: Debian - NGINX (HTTP)

[![Build Status](https://travis-ci.org/ericmdev/docker.debian-nginx.svg?branch=master)](https://travis-ci.org/ericmdev/docker.debian-nginx)

**Docker orchestration** of [Debian](https://www.debian.org/) [NGINX](https://www.nginx.com/) HTTP web server.

*Requirements*
- [Docker](https://www.docker.com/) 

*Base Docker Image:*
- [debian:jessie](https://hub.docker.com/_/debian/)

### Development

    $ docker-compose build

Builds the `http` service in `docker-compose.yml`.

It creates an image with the name `dockerdebiannginx_http` and the tag `latest`.

    $ docker images
    # dockerdebiannginx_http latest f1643e5cdd6f 2 minutes ago 133.9 MB

### Usage

    $ docker-compose up -d

Creates and starts a container with the name `dockerdebiannginx_http_1`.

    $ docker ps -a
    # ... dockerdebiannginx_http "nginx" ... dockerdebiannginx_http_1

After a few seconds, open `http://<machine_ip>:8080`.

### Host Mapping

Volumes are mapped to host `./volumes/`.
- `/var/cache/nginx`
- `/var/log/nginx`
- `/var/www/`
