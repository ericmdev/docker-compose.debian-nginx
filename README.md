## Docker: Debian - NGINX

**Dockerfile** of [Debian](https://www.debian.org/) [NGINX](https://www.nginx.com/).

*Based on the official NGINX [Dockerfile](https://github.com/nginxinc/docker-nginx).

*Requirements*
- [Docker](https://www.docker.com/) 

*Base Docker Image:*
- [debian:jessie](https://hub.docker.com/_/debian/)

### Development

**Build**

*Build `ws` service in docker-compose.yml:*
    
    $ docker-compose build [ws]

This will create an image with the name `<project>_<service>` (e.g: `dockerdebiannginx_ws`) and the tag `latest`.

    $ docker images
    # dockerdebiannginx_ws latest f1643e5cdd6f 2 minutes ago 133.9 MB

### Usage

    $ docker-compose up -d

This will create and start a container from the `dockerdebiannginx_ws` image with the name `dockerdebiannginx_ws_1`:

    $ docker ps -a
    # ... dockerdebiannginx_ws "nginx" ... dockerdebiannginx_ws_1

*Welcome Page*

After a few seconds, open `http://<machine_ip>`.
