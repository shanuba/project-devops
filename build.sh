#!/bin/bash
echo"current branch:$BRANCH_NAME"
if["$BRANCH_NAME"=="dev"];then
docker build -t shanuba/dev-repo-dockimg
echo"Shanuba" | docker login -u "shanuba" --password-stdin 
docker push shanuba/dev-dockimg:latest

elif["$BRANCH_NAME"=="prod"];then
docker build -t shanuba/prod-repo-dockimg
echo"Shanuba" | docker login -u "shanuba" --password-stdin 
docker push shanuba/prod-dockimg:latest
fi
