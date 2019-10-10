freg-collector-host = http://localhost:18080
freg-converter-host = http://localhost:18081
sirius-converter-host = http://localhost:18083

.PHONY: default
default: | help

.PHONY: start-all
start-all: ## Start all services (docker containers)
	@make validate-certs
	docker-compose up

.PHONY: start-all-recreate
start-all-recreate: ## Recreate and start docker containers even if their configuration and image haven't changed
	@make validate-certs
	docker-compose up --force-recreate

.PHONY: stop-all
stop-all: ## Stop and remove all services (docker containers)
	docker-compose down

.PHONY: start-db
start-db: ## Start DB-only containers
	docker-compose up postgresdb adminer

.PHONY: start-freg-collector
start-freg-collector: ## Start the FREG rawdata collector service
	docker-compose up fregCollector

.PHONY: start-freg-converter
start-freg-converter: ## Start the FREG rawdata converter service
	docker-compose up fregConverter

.PHONY: freg-collector-activate
freg-collector-activate: ## Activate the FREG rawdata collector
	curl $(freg-collector-host)/freg/dc/start

.PHONY: freg-collector-deactivate
freg-collector-deactivate: ## Deactivate the FREG rawdata collector
	curl $(freg-collector-host)/freg/dc/stop

.PHONY: freg-converter-activate
freg-converter-activate: ## Activate the FREG rawdata converter
	curl -X POST $(freg-converter-host)/rawdata-converter/start

.PHONY: sirius-converter-activate
sirius-converter-activate: ## Activate the Sirius rawdata converter
	curl -X POST $(sirius-converter-host)/rawdata-converter/start

.PHONY: sirius-converter-deactivate
sirius-converter-deactivate: ## Deactivate the Sirius rawdata converter
	curl -X POST $(sirius-converter-host)/rawdata-converter/stop

.PHONY: open-adminer
open-adminer: ## Open a web based DB admin tool in your browser
	open http://localhost:18090/?pgsql=172.17.0.1:15432&username=rdc&db=rdc

.PHONY: validate-certs
validate-certs:
	@test -d certs || (echo "Unable to find certificates. Call a friend..." && exit 1)

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
