.PHONY: help
help:  ## Show this help.
	@egrep '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-22s\033[0m %s\n", $$1, $$2}'

.PHONY: build-arm
build-arm:  ## Build docker image (linux/arm64 architecture).
	docker buildx build -t franzdiebold/datascience-ultimate:latest --platform=linux/arm64 .

.PHONY: build-amd
build-amd:  ## Build docker image (linux/amd64 architecture).
	docker buildx build -t franzdiebold/datascience-ultimate:latest --platform=linux/amd64 .
