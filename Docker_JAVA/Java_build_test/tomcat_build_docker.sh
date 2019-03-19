
#!/bin/sh

# build the Docker image
echo "building Docker image Oracle-8" 
docker build -f tomcat_dockerfile -t demo/oracle-java:8 . &&

# compile Main.java test file
echo "compiling test Java file" &&
docker run --rm -v $PWD:/app -w /app demo/oracle-java:8 javac Main.java &&

# run compiled Main.class test file
echo "running Java class test file" &&
docker run --rm -v $PWD:/app -w /app demo/oracle-java:8 java Main

echo "program end"










