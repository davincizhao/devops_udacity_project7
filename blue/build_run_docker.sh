#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a green image tag
docker build --tag=nginxgreenimage .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run nginx app port to 80
docker run -p 8000:80 nginxgreenimage
