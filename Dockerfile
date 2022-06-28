ARG VERSION=latest

FROM varnish:${VERSION}

USER root

RUN apt-get update && apt-get install -y prometheus-varnish-exporter &&\
 rm -rf /var/lib/apt/lists/*

USER varnish
