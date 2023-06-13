#!/bin/bash

# Stop the running container
docker stop my-js-app-container

# Remove any previously stopped container
docker rm my-js-app-container || true

# Start a new container
docker run -d --name my-js-app-container -p 80:8080 public.ecr.aws/j9v3f8u1/angular-app:latest
