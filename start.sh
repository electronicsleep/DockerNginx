#!/bin/bash
docker rm nginx-route
docker rm mynginx
docker build -t nginx-route . 
docker run -p 8000:8000 --name mynginx -i -t nginx-route
