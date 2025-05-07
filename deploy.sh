#!/bin/bash
echo"Deployment branch:$BRANCH_NAME"
docker stop dockimg-container ||true
docker rm dockimg-container ||true

if["$BRANCH_NAME"=="dev"];then
docker pull shanuba/dev-dockimg:latest
docker run -d -p 80:80--name dockimg-container shanuba/dev-dockimg:latest 
elseif["$BRANCH_NAME"=="prod"];then
docker pull shanuba/prod-dockimg:latest
docker run -d -p 80:80--name dockimg-container shanuba/prod-dockimg:latest 
fi