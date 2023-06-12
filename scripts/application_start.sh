#!/bin/bash

# Remove any previously stopped container
docker rm my-js-app-container || true

# Start a new container
docker run -d --name my-js-app-container -p 80:80 public.ecr.aws/j9v3f8u1/angular-app/my-js-app:latest
