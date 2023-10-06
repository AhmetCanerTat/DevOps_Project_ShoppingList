#!/bin/bash

response=$(curl -Is 10.0.40.192:8081 | head -n 1)

if [[ "$response" == "HTTP/1.1 200 OK"* ]]; then
    echo "Server responded with 200 OK."
    # Add any additional commands you want to run on success here
else
    echo "Server did not respond with 200 OK. Exiting."
    exit 5
fi
