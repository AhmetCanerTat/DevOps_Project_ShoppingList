#!/bin/bash
echo "This is the run command"
docker container rm shoppinglist-container || true
docker image rm test:0.0.1 || true
docker pull 10.0.40.160:5000/shoppinglist/test:0.0.1  
docker run --name shoppinglist-container test:0.0.1 