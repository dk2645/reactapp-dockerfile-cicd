#!/bin/bash

# Stop the running production container
sudo docker stop my-production-container || true

# Remove the stopped container
sudo docker rm my-production-container || true

#change dir
cd /home/ubuntu/new-app

# Build a new production image
sudo docker build -t my-production-image:latest .

# Run a new container using the new image
sudo docker run -d --name my-production-container -p 81:3000 my-production-image:latest
