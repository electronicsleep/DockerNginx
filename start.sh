#!/bin/bash
docker rm dockernginx
docker rm dockernginx
docker build -t dockernginx .
docker run -p 8000:8000 --name dockernginx -it dockernginx
