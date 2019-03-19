# dockerized version of Protege to be used a microservice.

# to run test state
# http://localhost:8888/

# to adjust admin settings
# http://localhost:8888/#application/settings



# Mongodb - requirement
docker run --name mongodb -d -v mongodb_data:/data/db mongo:3


# Protege docker stock config
docker run --name webprotege -d \
  -v webprotege_data:/Users/twellman/webprotege/data \
  -v webprotege_logs:/Users/twellman/webprotege/logs \
  --link mongodb -p 8888:8080 \
  skyplabs/webprotege


# Protege docker custom config
#export WP_CONFIG_DIR=/etc/webprotege
#docker run --name webprotege -d \
#  -v webprotege_data:/data/webprotege \
#  -v webprotege_logs:/var/log/webprotege \
#  -v $(pwd)/config/webprotege.properties:${WP_CONFIG_DIR}/webprotege.properties:ro \
#  -v $(pwd)/config/mail.properties:${WP_CONFIG_DIR}/mail.properties:ro \
#  --link mongodb -p 8888:8080 \
#  skyplabs/webprotege

# build - change directory example
# docker build -t webprotege --build-arg WEBPROTEGE_DATA_DIR=/data/webprotege .


# Admin account
docker exec -it webprotege webprotege-cli create-admin-account

