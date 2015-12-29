## Docker: Debian - NGINX

**Dockerfile** of [Debian](https://www.debian.org/) - [NGINX](https://www.nginx.com/) [Docker](https://www.docker.com/) image.

Based on the official NGINX [Dockerfile](https://github.com/nginxinc/docker-nginx).

### Base Docker Image

- [debian:jessie](https://hub.docker.com/_/debian/)

### Development

Build an image from Dockerfile with the tag `debian/nginx`:

    $ docker build -t="debian/nginx" -f ./Dockerfile .
