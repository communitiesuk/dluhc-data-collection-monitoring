# Monitoring stack for submit social housing lettings and sales data (CORE)
This codebase contains different Github Actions pipelines and a Cloud Foundry manifest used to build our monitoring stack.

## Stack overview
![Monitoring Stack](monitoring.png)
This codebase relies on an existing monitoring space and automates the creation of three components
- A [Prometheus exporter](https://github.com/alphagov/paas-prometheus-exporter) which queries the `/metrics` endpoint of every application the configured user (auditor) has access to
- A [Prometheus instance](https://github.com/prometheus/prometheus) persisting collected metrics on an [InfluxDB database](https://github.com/influxdata/influxdb)
- A [Grafana instance](https://github.com/grafana/grafana) where dashboards are built reading the prometheus instance and persisting on a [PostgreSQL database](https://github.com/postgres/postgres)

## Pipelines overview

### Metrics exporter deployment on GOV.UK PaaS

### Build Prometheus docker image

### Prometheus deployment on GOV.UK PaaS

### Metrics exporter deployment on GOV.UK PaaS