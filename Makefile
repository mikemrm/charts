.PHONY: help helm-docs

help: Makefile ## Prints this help message.
	@grep -h "##" $(MAKEFILE_LIST) | grep -v grep | sed -e 's/:.*##/#/' | column -c 2 -t -s#

helm-docs: ## Regenerates helm docs
	@go run github.com/norwoodj/helm-docs/cmd/helm-docs@latest --template-files=./README.md.gotmpl
