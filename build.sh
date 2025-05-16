#!/bin/bash
echo"current branch:$BRANCH_NAME"
if["$BRANCH_NAME"=="dev"];then
docker build -t shanuba/dev-repo
echo"Shanuba" | docker login -u "shanuba" --password-stdin 
docker push shanuba/dev-repo

elif["$BRANCH_NAME"=="prod"];then
docker build -t shanuba/prod-repo
echo"Shanuba" | docker login -u "shanuba" --password-stdin 
docker push shanuba/prod-repo
fi
