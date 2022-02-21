.PHONE: prometheus_config
prometheus_config:
	envsubst < prometheus_template.yml > prometheus.yml
	envsubst < web_template.yml > web.yml

.PHONY: deploy
deploy:
