#!/bin/sh

# build the Docker image
echo "building Docker image using Docker library file" 
docker build -f dockerfile -t tomcat_webvowl_simple . &&

# run docker image
echo "running tomcat via docker" &&
docker run -it --rm -p 8088:8080 tomcat_webvowl_simple

echo " ** program end ** "










