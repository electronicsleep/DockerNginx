FROM debian:stable

MAINTAINER Chris Robertson https://github.com/electronicsleep

RUN apt-get update && apt-get install nginx -y

RUN apt-get install vim -y
RUN apt-get install curl -y

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

ADD html/* /var/www/html

ADD nginx.conf /etc/nginx/nginx.conf

ADD default /etc/nginx/sites-enabled
WORKDIR /etc/nginx
RUN /usr/sbin/nginx -t
CMD ["/usr/sbin/nginx","-g","daemon off;"]
