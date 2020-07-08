#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=kalyani297/project4_mlapi

# Step 2:  
# Authenticate & tag
#echo "Docker ID and Image: $dockerpath"
export DOCKER_ID_USER="kalyani297"
docker login    
docker tag rk_project4 $DOCKER_ID_USER/project4_mlapi
docker push $DOCKER_ID_USER/project4_mlapi

# Step 3:
# Push image to a docker repository
docker push kalyani297/project4_mlapi
