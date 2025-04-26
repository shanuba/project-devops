#!/bin/bash
echo"current branch:$Branchname"
if["$branchname"=="dev"];then
dockercompose build $reactapp
echo"logging " 
docker login
docker push $reactapp

elif["$branchname"=="pod"];then
dockercompose build $reactapp
echo"logging " 
docker login
docker push $reactapp