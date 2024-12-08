.PHONY: helm-docs version-increment bump-major bump-minor bump-patch prepare-branch

help: Makefile ## Prints this help message.
	@grep -h "##" $(MAKEFILE_LIST) | grep -v grep | sed -e 's/:.*##/#/' | column -c 2 -t -s#

helm-docs: ## Regenerates helm docs
	@go run github.com/norwoodj/helm-docs/cmd/helm-docs@latest --template-files=./README.md.gotmpl

version-increment:
	@if [ -z "$(CHART)" ]; then echo 'CHART=$$NAME must be specified'; exit 1; fi

	@current_version="$$(yq -r '.version' "$(CHART)/Chart.yaml")"; \
	export next_version="$$(yq -r '.version | capture("v?(?P<major>[0-9]+)\\.(?P<minor>[0-9]+)\\.(?P<patch>[0-9]+).*") \
										| ."$(NEXT)" |= (tonumber + 1 | tostring) \
										| .major |= ("$(MAJOR_VERSION)" | select(. != "") // .major) \
										| .minor |= ("$(MINOR_VERSION)" | select(. != "") // .minor) \
										| .patch |= ("$(PATCH_VERSION)" | select(. != "") // .patch) \
										| "v" + ([.major, .minor, .patch] | join(".")) \
					' "$(CHART)/Chart.yaml")"; \
	echo "Updating version: $$current_version -> $$next_version"; \
	yq -i '.version = env(next_version)' "$(CHART)/Chart.yaml"

bump-major: NEXT=major
bump-major: MINOR_VERSION=0
bump-major: PATCH_VERSION=0
bump-major: version-increment helm-docs ## Increments CHART major version and regenerates docs.

bump-minor: NEXT=minor
bump-minor: PATCH_VERSION=0
bump-minor: version-increment helm-docs ## Increments CHART minor version and regenerates docs.

bump-patch: NEXT=patch
bump-patch: version-increment helm-docs ## Increments CHART patch version and regenerates docs.

prepare-branch: ## Prepares CHART release branch. Use bump-* to bump the version first.
	@if [ -z "$(CHART)" ]; then echo 'CHART=$$NAME must be specified'; exit 1; fi

	@current_version="$$(yq -r '.version' "$(CHART)/Chart.yaml")"; \
	git checkout -b "releases/$(CHART)/$$current_version" && \
	if git --no-pager diff --exit-code "$(CHART)/"; then \
		echo "No changes in $(CHART)/"; \
	else \
		git add "$(CHART)/Chart.yaml" "$(CHART)/README.md" && \
		git --no-pager status "$(CHART)/" && \
		git commit -s -m "Update $(CHART) release: $$current_version"; \
	fi; \
	echo ""; \
	echo "Branch prepared! Run: git push origin releases/$(CHART)/$$current_version"
