#!/bin/bash

cd /home/app/my_blogs
git pull origin master
docker build -t rockyj/blogs --file=./Dockerfile  .
docker ps -aq | xargs docker stop | xargs docker rm -fv
docker run -itd -p 8080:8080 rockyj/blogs
