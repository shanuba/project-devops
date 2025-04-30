#!/bin/bash
echo"current branch:$BRANCH_NAME"
if["$BRANCH_NAME"=="dev-repo"];then
docker build -t shanuba/dev-repo-dockimg
echo"Shanuba" | docker login -u "shanuba" --password-stdin 
docker push shanuba/dev-repo-dockimg:latest

elif["$BRANCH_NAME"=="prod-repo"];then
docker build -t shanuba/prod-repo-dockimg
echo"Shanuba" | docker login -u "shanuba" --password-stdin 
docker push shanuba/prod-repo-dockimg:latest
fi