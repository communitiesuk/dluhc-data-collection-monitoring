.PHONE: prometheus_config
prometheus_config:
	envsubst < prometheus_template.yml > prometheus.yml
