#!/bin/sh

# Function to handle script termination
cleanup() {
  echo "Script terminated by user."
  exit 1
}

# Trap SIGINT signal (Ctrl+C)
trap cleanup SIGINT

# Function to check if the application is ready
check_application_ready() {
  URL=$1
  while ! curl -s "$URL" > /dev/null ; do
    echo "Waiting for the application to be ready..."
    sleep 5
  done
  echo "Application is ready!"
}

# Function to load environment variables from .env file
load_env_file() {
  ENV_FILE=$1
  if [ -f "$ENV_FILE" ]; then
    export $(grep -v '^#' "$ENV_FILE" | xargs)
  else
    echo ".env file not found in the directory."
    exit 1
  fi
}

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

# Load environment variables from .env file
ENV_FILE=".env"
load_env_file "$ENV_FILE"

# Run the docker-compose command
docker-compose up -d

# Check if the necessary environment variables are set
if [ -z "$SERVICE_PORT" ]; then
  echo "SERVICE_PORT must be set in the .env file."
  exit 1
fi

# URL to check
URL="http://localhost:$SERVICE_PORT"

# Wait until the application is ready
check_application_ready "$URL"

# Output the port the application is running on
echo "Application is running on port: $SERVICE_PORT"
