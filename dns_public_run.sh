container="dns-public"
ip=192.168.0.53
docker run -d \
 --restart always \
 --name "${container}" \
 --dns=127.0.0.1 \
 --network internal \
 --ip ${ip} \
 --publish=53:53/udp \
 --publish=65053:10000 \
 --volume=/mnt/docker/dns/public:/data \
  sameersbn/bind:latest
docker network connect bridge "${container}"
