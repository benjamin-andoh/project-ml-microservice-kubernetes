#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=bigandoh/microservice_kubernetes:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl apply -f k8s.yml 


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward microservice-deployment-555666d88b-zqqqn 8080:60794
