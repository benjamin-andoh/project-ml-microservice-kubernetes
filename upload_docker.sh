#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=bigandoh/microservice_kubernetes:latest

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
echo " container committing ..."
docker container commit microservice_kubernetes microservice_kubernetes:latest
echo "container committed. Image tag started ..."

docker image tag microservice_kubernetes:latest bigandoh/microservice_kubernetes:latest

docker login

# echo "tag completed Image push to Docker Hub started ..."
docker push bigandoh/microservice_kubernetes:latest

