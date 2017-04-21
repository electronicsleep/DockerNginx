# DockerNginx

Author: Chris Robertson https://github.com/electronicsleep

Date: 04/14/2016

Purpose: Simple Docker Nginx implementation

Released under the BSD license


Template for creating a basic docker and nginx start script using Debian 8

Install Docker

docker -v

Docker version 1.10.1, build 9e83765

Add your docker IP to hosts file

Example:

sudo vim /etc/hosts

192.168.99.100 	docker.local

Usage:
```
Open Terminal
eval $(docker-machine env default)
git clone https://github.com/electronicsleep/DockerNginx.git
cd DockerNginx
bash -x start.sh
http://docker.local:8080/
```
