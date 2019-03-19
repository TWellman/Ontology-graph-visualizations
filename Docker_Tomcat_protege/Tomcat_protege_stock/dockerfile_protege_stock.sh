docker run --name mongodb2 -d -v mongodb_data:/data/db mongo:3

docker run --name webprotege -d \
  -v webprotege_data:/srv/webprotege \
  -v webprotege_logs:/var/log/webprotege \
  --link mongodb2 -p 8888:8080 \
  skyplabs/webprotege

  