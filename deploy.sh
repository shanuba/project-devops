#!/bin/bash
echo"deployment branch:$Branchname"
docker stop mydocker-container||true
docker rm mydocker-container||true
if["$Branchname"=="dev"];then
docker pull shanuba/dev-repo-dockerimg:latest
docker run -d -p 80:80--name mydocker-container/shanuba/dev-repo-dockerimg:latest
elif["$Branchname"=="main"];then
docker pull shanuba/pod-repo-dockerimg:latest
docker run -d -p 80:80-- name mydocker-container/shanuba/pod-repo-dockerimg:latest
fi