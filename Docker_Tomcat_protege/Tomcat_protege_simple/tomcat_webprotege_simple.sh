#!/bin/sh

# setup working directories
#mkdir -p /data/webprotege
#mkdir -p /data/db 


# run mongo latest database
docker run --name mongodb -d -v mongodb_data:/data/db mongo:3

# build the Docker image
echo "building Docker image using Docker library file" 
docker build -f docker_webprotege_simple -t tomcat_webprotege_simple . &&

# run docker image
echo "running tomcat via docker" &&
docker run -it --link mongodb --rm -p 8088:8080 tomcat_webprotege_simple 


# check if user xml is loaded
#docker exec -i -t tomcatcontainer /bin/bash
#cat conf/tomcat-users.xml   


echo " ** program end ** "










