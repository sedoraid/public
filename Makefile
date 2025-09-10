COMPOSE_FILE := ./infra/local/docker-compose.yml
DOCKER_COMPOSE := docker compose -f $(COMPOSE_FILE)

.PHONY: build
build:
	@$(DOCKER_COMPOSE) build --no-cache

.PHONY: up
up:
	@$(DOCKER_COMPOSE) up -d

.PHONY: down
down:
	@$(DOCKER_COMPOSE) down

.PHONY: tariff-sh
tariff-sh:
	@$(DOCKER_COMPOSE) exec tariff bash

.PHONY: tariff-logs
tariff-logs:
	@$(DOCKER_COMPOSE) logs -f tariff
