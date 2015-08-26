#
# AUTHOR              Carson,C.J.Zeong <zcy@nicescale.com>
# DOCKER-VERSION      1.7
# Dockerizing Nginx: Dockerfile for building Nginx images
#

from       csphere/alpine:3.2
maintainer Carson,C.J.Zeong <zcy@nicescale.com>

label service=nginx

workdir /app

run apk add --update nginx

add nginx.conf /etc/nginx/nginx.conf
add default.conf /etc/nginx/conf.d/default.conf
add app/* /app/

expose 80 443

cmd ["nginx"]
