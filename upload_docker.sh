#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="redaloukil/model:test"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker logout
docker login --username=redaloukil 
docker tag 143a3c7fdbc3 redaloukil/model:test
docker images | grep model

# Step 3:
# Push image to a docker repository
docker push redaloukil/model:test