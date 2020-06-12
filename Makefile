# README: http://makefiletutorial.com
VERSION=2.7.2

.PHONY: build push login

build:
	@docker build --no-cache --tag krates/registry:$(VERSION) --tag krates/registry:latest .

push:
	@docker push krates/registry:$(VERSION)
	@docker push krates/registry:latest

login:
	@docker login -u="krates" -p="$$DOCKER_PASSWORD"