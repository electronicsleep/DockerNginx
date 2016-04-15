#!/bin/bash
docker rm nginx-route
docker rm mynginx
docker build -t nginx-route . 
docker run -p 8080:8080 --name mynginx -i -t nginx-route
