# Debian: Nginx 1.9.9
#
# VERSION 0.0.1

# - Set the base image.
FROM debian:jessie

# - Set author.
MAINTAINER Eric Mugerwa <dev@ericmugerwa.com>

# - Append NGINX stanza to `/etc/apt/sources.list`.
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62
RUN echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list

# - Set environment variable `NGINX Version`.
ENV NGINX_VERSION 1.9.9-1~jessie

# - Update APT.
# - Install openssl.
# - Install ca-certificates.
# - Install NGINX.
# - Remove "/var/lib/apt/lists/*".
RUN apt-get update && \
    apt-get install -y openssl ca-certificates nginx=${NGINX_VERSION} && \
    rm -rf /var/lib/apt/lists/*

# - Remove default configuration files.
RUN rm -rf /etc/nginx/conf.d/*

# - Remove `/srv/www/*`.
RUN rm -rf /srv/www/*

