# DockerNginx

Author: Chris Robertson <electronicsleep@gmail.com>

Date: 04/14/2016

Purpose: Simple docker nginx implementation

Released under the BSD license


Template for creating a basic docker and nginx start script using Debian 8

Install Docker

docker -v

Docker version 1.10.1, build 9e83765

Add your docker IP to hosts file

Example:
192.168.99.100 	docker.local

Usage:
```
Open Terminal
git clone https://github.com/electronicsleep/DockerNginx.git
cd DockerNginx
bash -x start.sh
http://docker.local:8080/
```
