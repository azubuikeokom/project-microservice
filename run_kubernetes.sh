#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
export dockerpath=zubyking/ml-housing-price:v1.0.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy ml-housing-price --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/ml-housing-price-84b9d86cf8-292jm  --address 0.0.0.0 8000:80


