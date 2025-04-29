#!/bin/bash
echo"Deployment branch:$Branchname"
docker stop dockimg-container ||true
docker rm dockimg-container ||true

if["$branchname"=="dev-repo"];then
docker pull shanuba/dev-repo-dockimg:latest
docker run -d -p 80:80--name dockimg-container shanuba/dev-repo-dockimg:latest 
elseif["$branchname"=="prod-repo"];then
docker pull shanuba/prod-repo-dockimg:latest
docker run -d -p 80:80--name dockimg-container shanuba/prod-repo-dockimg:latest 
fi