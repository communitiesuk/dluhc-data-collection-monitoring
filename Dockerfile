# Using Alpine since prom/prometheus uses BusyBox which has no package manager
FROM alpine:latest
RUN apk --no-cache add \
    jq \
    gettext \
    prometheus

COPY prometheus_template.yml /etc/prometheus/prometheus_template.yml
# run_prometheus.sh has the execution flag set
COPY scripts/run_prometheus.sh /usr/bin/run_prometheus.sh
ENTRYPOINT ["/usr/bin/run_prometheus.sh"]

# These instructions are copied from prom/prometheus:latest
WORKDIR /prometheus
RUN chown -R nobody:nobody /etc/prometheus /prometheus
USER nobody
EXPOSE 9090
VOLUME ["/prometheus"]
CMD ["--config.file=/etc/prometheus/prometheus.yml", "--storage.tsdb.path=/prometheus", "--web.console.libraries=/etc/prometheus/console_libraries", "--web.console.templates=/etc/prometheus/consoles"]
