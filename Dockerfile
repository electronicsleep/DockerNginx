FROM ubuntu:16.04

MAINTAINER Chris Robertson https://github.com/electronicsleep

RUN apt-get update && apt-get install nginx -y

RUN apt-get install php-fpm -y

#DEV
#RUN apt-get install vim -y
#RUN apt-get install curl -y
#RUN apt-get install net-tools -y

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

ADD html/* /var/www/html/
ADD php/* /var/www/html/

ADD nginx.conf /etc/nginx/nginx.conf
ADD default /etc/nginx/sites-enabled

ADD docker-php7-nginx.sh /etc/nginx

WORKDIR /etc/nginx
RUN /usr/sbin/nginx -t

#Only run Nginx
#CMD ["/usr/sbin/nginx","-g","daemon off;"]

#Run PHP7-FPM and Nginx
CMD ["bash", "docker-php7-nginx.sh"]
