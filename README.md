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

Creates and starts the service in `docker-compose.yml`.

After a few seconds, open `http://<machine_ip>:8080` to see the default page `"Hello, Docker!"`.

### Development

    $ docker-compose build

Builds the service in `docker-compose.yml`.

### Vagrant

    $ vagrant up

Open `http://192.168.33.62`.

*Plugins*
- [vagrant-docker-compose](https://github.com/leighmcculloch/vagrant-docker-compose)
    - `$ vagrant plugin install vagrant-docker-compose`

### Host Mapping

Volumes are mapped to host `./volumes/`.
- `/var/cache/nginx`
- `/var/log/nginx`
- `/var/www/`
