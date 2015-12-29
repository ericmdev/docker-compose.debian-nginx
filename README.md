## Docker: Debian - NGINX

**Dockerfile** of [Debian](https://www.debian.org/) [NGINX](https://www.nginx.com/) for trusted automated [Docker](https://www.docker.com/) builds.

Based on the official NGINX [Dockerfile](https://github.com/nginxinc/docker-nginx).

### Base Docker Image

- [debian:jessie](https://hub.docker.com/_/debian/)

### Development

Build an image from Dockerfile with the tag `debian/nginx`:

    $ docker build -t="debian/nginx" -f ./Dockerfile .

### Usage

List running containers:

    $ docker ps [-a]

Run docker image:

    $ docker run -d -p 80:80 <image_name|container_id>
    # e.g: docker run -d -p 80:80 debian/nginx

View docker logs:

    $ docker logs <container_name>
    # e.g: docker logs romantic_ride

Welcome page:

After a few seconds, open `http://<host>` (e.g: 192.168.99.100).

Access Docker container:

    $ docker exec -it romantic_ride bash
