#!/bin/bash

# Stop the running container
sudo docker stop my-js-app-container

# Remove any previously stopped container
sudo docker rm my-js-app-container || true

# Start a new container
sudo docker run -d --name my-js-app-container -p 80:8080 public.ecr.aws/j9v3f8u1/angular-app:latest
