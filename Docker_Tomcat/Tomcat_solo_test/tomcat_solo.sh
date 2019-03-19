#!/bin/sh

#build the Docker image
echo "building Docker image using Docker library file" 
docker build -f dockerfile -t tomcat_solo . &&

# run docker image
echo "running tomcat via docker" &&
docker run -it --rm -p 8088:8080 tomcat_solo 

echo " ** program end ** "










