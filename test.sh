#!/bin/bash
set -x

docker rm dockernginx
docker build -t dockernginx .
ID=$(docker run -d -p 8000:8000 --name dockernginx -i dockernginx)
echo "ID: $CID"

sleep 1

# Example: Run Tests
OUTPUT=$(curl localhost:8000)

CHECK="nginx"

if [[ $OUTPUT == *"$CHECK"* ]];then
 echo "TEST: ok found string: $CHECK"
 ERROR=0
else
 echo "TEST: error did not find string: $CHECK"
 ERROR=1
fi

# Docker stop
docker stop $ID

exit $ERROR
