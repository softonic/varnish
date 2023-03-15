ARG VERSION=latest

FROM varnish:${VERSION}

USER root

RUN set -e; \
    apt-get update; \
    apt-get -y install prometheus-varnish-exporter libmaxminddb-dev $VMOD_DEPS /pkgs/*.deb;

# Install geoip2 https://github.com/varnishcache-friends/libvmod-geoip2
RUN mkdir /tmp/module_to_build && \
    curl -fLo /tmp/module_to_build/src.tar.gz https://github.com/varnishcache-friends/libvmod-geoip2/archive/refs/tags/v1.3.0.tar.gz

WORKDIR /tmp/module_to_build

RUN tar xzf src.tar.gz --strip 1

RUN ./autogen.sh \
    && ./configure \
    && make \
    # && make check \
    && make install

RUN apt-get -y purge --auto-remove $VMOD_DEPS varnish-dev; \
    rm -rf /var/lib/apt/lists/*

USER varnish
