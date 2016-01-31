#
# AUTHOR              Carson,C.J.Zeong <zcy@nicescale.com>
# DOCKER-VERSION      1.7
# Dockerizing Nginx: Dockerfile for building Nginx images
#

from       microimages/alpine
maintainer Carson,C.J.Zeong <zcy@nicescale.com>

label service=nginx

workdir /app

env NGINX_APK_VERSION 1.8.0-r3
run apk add --update nginx=$NGINX_APK_VERSION

add nginx.conf /etc/nginx/nginx.conf
add default.conf /etc/nginx/conf.d/default.conf

run echo hellocsphere > /app/index.html

expose 80 443

cmd ["nginx"]
