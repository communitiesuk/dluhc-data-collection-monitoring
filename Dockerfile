FROM prom/prometheus
COPY prometheus_template.yml /etc/prometheus/prometheus_template.yml
COPY scripts/setup_prometheus_config.sh /setup_prometheus_config.sh
ENTRYPOINT ["./setup_prometheus_config.sh && /bin/prometheus"]
