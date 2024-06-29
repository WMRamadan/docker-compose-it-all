#!/bin/bash

# Check if the directory argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

# Assign the directory argument to a variable
DIRECTORY=$1

# Check if the directory exists
if [ ! -d "$DIRECTORY" ]; then
  echo "Directory $DIRECTORY does not exist."
  exit 1
fi

# Navigate to the specified directory
cd "$DIRECTORY" || exit

# Check if the docker-compose.yaml file exists in the directory
if [ ! -f "docker-compose.yaml" ]; then
  echo "docker-compose.yaml file not found in directory $DIRECTORY."
  exit 1
fi

# Stop docker-compose
docker compose down
