prometheus_exporter Container
===================================

![release](https://img.shields.io/github/release/tri-star/docker-prometheus-exporter.svg?style=flat-square)
![license](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)

# Overview
A docker container which includes `prometheus_exporter` ruby gem.
It's usefull for monitor multi process ruby applications.

## Usage

Start container:
```
docker build -t docker-prometheus-exporter:latest .
docker run --rm -p 9394:9394 docker-prometheus-exporter:latest
```

Application side:

On the application side, customize exporter client setting is required, because prometheus_exporter client is connect to localhost by default.
``` ruby
    require 'prometheus_exporter/middleware'
    require 'prometheus_exporter/client'

    # Change default client instance.
    # %prometheus_exporter_container_host_name% is a placeholder.
    prometheus_client = PrometheusExporter::Client.new(host: '%prometheus_exporter_container_host_name%')
    PrometheusExporter::Client.default = prometheus_client

    Rails.application.middleware.unshift PrometheusExporter::Middleware
```

## Contribution

1. Fork ([https://github.com/tri-star/docker-prometheus-exporter/fork](https://github.com/tri-star/docker-prometheus-exporter/fork))
2. Create a feature branch
3. Commit your changes
4. Rebase your local changes against the master branch
5. Run the container, and verify your change works.
6. Create new Pull Request

## Licence

[MIT](https://github.com/tri-star/docker-prometheus-exporter/blob/master/LICENSE)

## Author

[tri-star](https://github.com/tri-star)
