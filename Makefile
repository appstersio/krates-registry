# README: http://makefiletutorial.com
VERSION=2.7.1

.PHONY: build push login

build:
	@docker build --no-cache --tag krates/registry:$(VERSION) .

push:
	@docker push krates/registry:$(VERSION)

login:
	@docker login -u="krates" -p="$$DOCKER_PASSWORD"