#!/usr/bin/env bash

## Complete the following steps to get Docker running locally
#step 0
docker system prune -f && docker volume prune -f


# Step 1:
# Build image and add a descriptive tag
docker build --tag=microservice_kubernetes  --no-cache .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -p 80:80 -h=`bigandoh` --name microservice_kubernetes microservice_kubernetes:latest