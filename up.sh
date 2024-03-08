#!/bin/bash

# Apaga containeres antigos
docker stop $(docker ps -a -q)
docker container prune -f

# Build the Docker image
docker build \
    -t wso2-api-manager:v1.0 \
    -f Base.Dockerfile \
    .

# Create directory data if it does not exist
mkdir -p data

# Run the Docker container
docker run \
    --name wso2-api-manager \
    -p 9443:9443 \
    -p 9763:9763 \
    -p 8243:8243 \
    -p 8280:8280 \
    -v $(pwd)/data:/home/wso2carbon/wso2am-3.2.0/repository/data \
    wso2-api-manager:v1.0
