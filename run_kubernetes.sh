#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=uzodimma/microservices_project:latest
dockerimage=house-prediction

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment $dockerimage --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment $dockerimage --type=LoadBalancer --port=8080

kubectl get services