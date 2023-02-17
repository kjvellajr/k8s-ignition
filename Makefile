SHELL := /bin/bash

.PHONY = help
.DEFAULT_GOAL := help

create: ## generate ignition file with butane
	podman run --interactive --rm \
	  quay.io/coreos/butane:release \
	  --pretty --strict < fcos.bu > fcos.ign

help: 
	@grep -E '^[a-zA-Z_-|/]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
