ARG VARNISH_VERSION=latest

FROM varnish:${VARNISH_VERSION}

RUN apt-get update && apt-get install -y prometheus-varnish-exporter &&\
 rm -rf /var/lib/apt/lists/*
