#!/bin/bash

# Build the Docker image
docker build -t my-jenkins .

# Run Jenkins container
docker run -it --rm \
    -p 8080:8080 \
    -p 50000:50000 \
    -v jenkins_home:/var/jenkins_home \
    my-jenkins