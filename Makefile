.PHONY: help build build-test run-build publish release lint test-unit test-e2e
.DEFAULT_GOAL := help

PROJECT_ID=appcompass
SERVICE_REGION=us-central1
REPOSITORY_URI=gcr.io
PROJECT_NAME=$(shell basename $(CURDIR))

help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

docker-login: ## docker login to repository account
	docker login https://$(REPOSITORY_URI)

build: ## builds service docker container
	docker build --target serve -t $(PROJECT_NAME) .

pull-build: ## pulls docker container from gcr
	docker pull $(REPOSITORY_URI)/$(PROJECT_ID)/$(PROJECT_NAME)

run-build: build ## runs docker container locally reachable at http:://localhost:8080
	docker run --name $(PROJECT_NAME) --rm -p 8080:8080 --env .env $(PROJECT_NAME)

# Google Cloud Platform
publish: ## builds docker container in Google Cloud Container Registry
	gcloud builds submit --tag $(REPOSITORY_URI)/$(PROJECT_ID)/$(PROJECT_NAME)

deploy: publish ## deploys the service to Google Cloud Run
	gcloud beta run deploy --region=$(SERVICE_REGION) $(PROJECT_NAME) --image $(REPOSITORY_URI)/$(PROJECT_ID)/$(PROJECT_NAME)
