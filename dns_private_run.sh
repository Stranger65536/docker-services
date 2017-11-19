container="dns-private"
ip=192.168.0.100
docker run -d \
 --restart always \
 --name "${container}" \
 --dns=127.0.0.1 \
 --network internal \
 --ip ${ip} \
 --publish=65100:10000 \
 --volume=/mnt/docker/dns/private:/data \
  sameersbn/bind:latest
docker network connect bridge "${container}"
