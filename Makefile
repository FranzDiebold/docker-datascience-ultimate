.PHONY: help
help:  ## Show this help.
	@egrep '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-22s\033[0m %s\n", $$1, $$2}'

.PHONY: build-server-arm
build-server-arm:  ## Build server Docker image (linux/arm64 architecture).
	docker buildx build -t franzdiebold/datascience-ultimate-server:latest --platform=linux/arm64 datascience-ultimate-server/

.PHONY: build-server-amd
build-server-amd:  ## Build server Docker image (linux/amd64 architecture).
	docker buildx build -t franzdiebold/datascience-ultimate-server:latest --platform=linux/amd64 datascience-ultimate-server/

.PHONY: build-lab-arm
build-lab-arm:  ## Build JupyterLab Docker image (linux/arm64 architecture).
	docker buildx build -t franzdiebold/datascience-ultimate:latest --platform=linux/arm64 datascience-ultimate/

.PHONY: build-lab-amd
build-lab-amd:  ## Build JupyterLab Docker image (linux/amd64 architecture).
	docker buildx build -t franzdiebold/datascience-ultimate:latest --platform=linux/amd64 datascience-ultimate/

.PHONY: build-arm
build-arm: build-server-arm build-lab-arm  ## Build all Docker images (linux/arm64 architecture).

.PHONY: build-amd
build-amd: build-server-amd build-lab-amd  ## Build all Docker images (linux/amd64 architecture).
