ARG DOCKER_TAG=latest

FROM varnish:${DOCKER_TAG}

RUN apt-get update && apt-get install -y prometheus-varnish-exporter &&\
 rm -rf /var/lib/apt/lists/*
