#!/bin/bash
echo"current branch:$BRANCH_NAME"
if["$BRANCH_NAME"=="dev"];then
docker build -t shanuba/dev-repo
echo"Shanuba" | docker login -u shanuba -p dckr_pat_z0obnJEPyEqtJNQtxCNOzaig89U
docker push shanuba/dev-repo

elif["$BRANCH_NAME"=="prod"];then
docker build -t shanuba/prod-repo
echo"Shanuba" | docker login -u shanuba -p dckr_pat_z0obnJEPyEqtJNQtxCNOzaig89U
docker push shanuba/prod-repo
fi
