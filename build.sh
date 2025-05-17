#!/bin/bash

echo "Current branch: $GIT_BRANCH"

if [[ $GIT_BRANCH == "origin/dev" ]]; then
    docker build -t shanuba/dev-repo .
    echo "Shanuba" | docker login -u shanuba -p dckr_pat_z0obnJEPyEqtJNQtxCNOzaig89U
    docker push shanuba/dev-repo

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    docker build -t shanuba/prod-repo .
    echo "Shanuba" | docker login -u shanuba -p dckr_pat_z0obnJEPyEqtJNQtxCNOzaig89U
    docker push shanuba/prod-repo
fi
