#!/bin/bash
CURRENTLOCATION=$1
echo $CURRENTLOCATION
cd $CURRENTLOCATION
FOLDERNAME=$(echo $(basename "$PWD") | tr '[:upper:]' '[:lower:]')

DOCKERFILE="Dockerfile"
CONTAINER_NAME=$FOLDERNAME"container"
IMAGENAME=$FOLDERNAME"image"
# Check if Dockerfile exists in the current directory
if [ -f "$DOCKERFILE" ]; then
  echo "Dockerfile found. Starting container..."

  # Build the Docker image
  docker build -t "$IMAGENAME" .
echo "Image Name: ""$IMAGENAME"
echo "Docker Run"
  # Run the container
  docker run -it --rm --name "$CONTAINER_NAME" -v "$CURRENTLOCATION":/"$FOLDERNAME" "$IMAGENAME":latest sh

 
else
  echo "Dockerfile not found in the current directory."
fi
