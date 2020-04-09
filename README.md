[![](https://images.microbadger.com/badges/image/softonic/varnish.svg)](https://microbadger.com/images/softonic/varnish "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/softonic/varnish.svg)](https://microbadger.com/images/softonic/varnish "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/commit/softonic/varnish.svg)](https://microbadger.com/images/softonic/varnish "Get your own commit badge on microbadger.com")
[![Software License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](LICENSE)

# Varnish

Docker image based on official Varnish Cache image, adding prometheus exporter [Prometheus Varnish Exporter](https://github.com/jonnenauha/prometheus_varnish_exporter)

### Overview

This image is built from Varnish Cache official image, and installs this exporter.
The aim of this image is to be used in a Varnish deployment both as `varnishd` and as exporter, to ensure that the same varnish version is used.

It is designed to run as Kubernetes Pod sidecar in a Varnish Pod and is used in Softonic's [Varnish helm chart](https://github.com/softonic/helm-charts/tree/master/varnish), the only requirement is to share `/var/lib/varnish`.
