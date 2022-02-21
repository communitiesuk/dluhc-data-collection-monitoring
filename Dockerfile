FROM prom/prometheus
ADD prometheus.yml /etc/prometheus/
ADD web.yml /etc/prometheus/

CMD ["--config.file=/etc/prometheus/prometheus.yml", "--web.config.file=/etc/prometheus/web.yml", "--storage.tsdb.path=/prometheus", "--web.console.libraries=/usr/share/prometheus/console_libraries", "--web.console.templates=/usr/share/prometheus/consoles"]
