#!/bin/bash
docker container stop shoppinglist-container-test || true
docker container rm shoppinglist-container-test || true
docker container stop shoppinglist-container-prod || true
docker container rm shoppinglist-container-prod || true
docker run --platform linux/amd64 -d -p 8081:80 --name shoppinglist-container-prod 10.0.40.160:5000/shoppinglist/test:0.0.3