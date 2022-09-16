#!/bin/bash

docker build -t becca20/automated-image:latest .
docker push becca20/automated-image:latest

docker stop auto-container
docker rm auto-container
docker run -d -p 8080:7000 --nano auto-container becca20/automated-image:latest
