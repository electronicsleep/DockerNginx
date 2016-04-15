FROM debian:stable
RUN apt-get update && apt-get install nginx -y

RUN apt-get install vim -y
RUN apt-get install curl -y

ADD html/* /var/www/html

ADD nginx.conf /etc/nginx/nginx.conf

ADD default /etc/nginx/sites-enabled
WORKDIR /etc/nginx
RUN /usr/sbin/nginx -t
CMD ["/usr/sbin/nginx","-g","daemon off;"]
