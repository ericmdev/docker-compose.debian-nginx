## Docker-Compose: Debian - NGINX (HTTP)

[![Build Status](https://travis-ci.org/ericmdev/docker-compose.nginx.svg?branch=master)](https://travis-ci.org/ericmdev/docker-compose.nginx)

**Docker orchestration** of [Debian](https://www.debian.org/) [NGINX](https://www.nginx.com/) HTTP web server.

*Requirements*
- [Docker](https://www.docker.com/) 

*Base Docker Image*
- [debian:jessie](https://hub.docker.com/_/debian/)

*Process*
- nginx (1.9.9)

### Usage

    $ docker-compose up -d

Creates and starts a container with the name `dockerdebiannginx_http_1`.

    $ docker ps -a
    # ... dockerdebiannginx_http "nginx" ... dockerdebiannginx_http_1

After a few seconds, open `http://<machine_ip>:8080`.

Access the Bash shell:

    $ docker exec -it dockerdebiannginx_http_1 bash

### Development

    $ docker-compose build

Builds the `http` service in `docker-compose.yml`.

It creates an image with the name `dockerdebiannginx_http` and the tag `latest`.

    $ docker images
    # dockerdebiannginx_http latest f1643e5cdd6f 2 minutes ago 133.9 MB

### Vagrant

    $ vagrant up

Now visit `192.168.33.62`.

The Vagrantfile uses the [vagrant-docker-compose](https://github.com/leighmcculloch/vagrant-docker-compose) plugin for Vagrant.

    $ vagrant plugin install vagrant-docker-compose

### Host Mapping

Volumes are mapped to host `./volumes/`.
- `/var/cache/nginx`
- `/var/log/nginx`
- `/var/www/`
