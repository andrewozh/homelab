.PHONY: kctx homelab create delete start stop
all: kctx homelab create delete start stop

help: ## Show this message
	@echo "Suggested commands:"
	@echo
	@grep -E '^[ a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

kctx: ## Activate homelab kubecontext
	kubectl config use-context kind-homelab

create: ## Create homelab cluster
	kind get clusters | grep homelab || kind create cluster --config kind-homelab.yaml

delete: ## Delete existing cluster
	kind delete cluster -n homelab

start stop: create ## Start/Stop homelab kind cluster
	podman ps -aq --filter "name=homelab" | xargs podman "$@"
