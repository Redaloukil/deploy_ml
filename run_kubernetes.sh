#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="redaloukil/model:test"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run model --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host

# Assuming we wait for the pod to switch to running mode
sleep 10

kubectl port-forward model 8000:80 

./make_prediction.sh