FROM prom/prometheus
COPY prometheus_template.yml /etc/prometheus/prometheus_template.yml
COPY scripts/run_prometheus.sh /bin/run_prometheus.sh
ENTRYPOINT ["/bin/run_prometheus.sh"]
