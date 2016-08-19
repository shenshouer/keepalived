
TAG=dev
PREFIX=shenshouer/keepalived

build:
	@echo "🐳 $@"
	@docker build -t $(PREFIX):$(TAG) .

push:
	@echo "🐳 $@"
	@docker push $(PREFIX):$(TAG)