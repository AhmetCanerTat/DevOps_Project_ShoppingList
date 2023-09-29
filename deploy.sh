#!/bin/bash
echo "This is the run command"
docker container stop shoppinglist-container || true
docker container rm shoppinglist-container || true
docker image rm 10.0.40.160:5000/shoppinglist/test:0.0.3|| true
docker pull 10.0.40.160:5000/shoppinglist/test:0.0.3  
docker run --platform linux/amd64 -d -p 8081:80 --name shoppinglist-container 10.0.40.160:5000/shoppinglist/test:0.0.3