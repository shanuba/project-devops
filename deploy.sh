#!/bin/bash
# echo"Deployment branch:$BRANCH_NAME"
# docker stop dockimg-container ||true
# docker rm dockimg-container ||true

# if["$BRANCH_NAME"=="dev-repo"];then
docker pull shanuba/dev-repo
docker run -idd -p 90:80 shanuba/dev-repo
#elseif["$BRANCH_NAME"=="prod-repo"];then
#docker pull shanuba/prod-repo-dockimg:latest
#docker run -d -p 80:80--name dockimg-container shanuba/prod-repo-dockimg:latest 
#fi
