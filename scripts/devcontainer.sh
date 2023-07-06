#!/bin/bash
CURRENTLOCATION=($1)
cd $CURRENTLOCATION
echo $CURRENTLOCATION
FOLDERNAME=(basename "$PWD")
DOCKERFILE="Dockerfile"
CONTAINER_NAME=$FOLDERNAME"-container"
IMAGENAME=$FOLDERNAME"-image"
# Check if Dockerfile exists in the current directory
if [ -f "$DOCKERFILE" ]; then
  echo "Dockerfile found. Starting container..."

  # Build the Docker image
  docker build -t "$IMAGENAME" .

  # Run the container
  docker run -it --rm --name -v "$CURRENTLOCATION":"$CURRENTLOCATION" "$CONTAINER_NAME" "$IMAGENAME" bash

 
else
  echo "Dockerfile not found in the current directory."
fi
