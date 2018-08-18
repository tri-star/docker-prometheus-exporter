FROM ruby:2.5.1

RUN gem install prometheus_exporter

CMD ["/usr/local/bundle/bin/prometheus_exporter"]
