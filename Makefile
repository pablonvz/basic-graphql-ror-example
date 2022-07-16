# ifeq (,$(wildcard ./.env))
# $(error environment file ".env" does not exist!)
# endif

# include .env
# export

clean:
	docker compose down --remove-orphans

up:
	docker compose up --detach

apish:
	docker compose exec api bash

init:
	docker compose exec api rails new . \
		--skip-git \
		--skip-asset-pipeline \
		--skip-action-mailer \
		--skip-action-mailbox
