SHELL = /bin/sh

clone :
	rm -rf the-example-app.nodejs && git clone git@github.com:contentful/the-example-app.nodejs.git the-example-app.nodejs

copy:
	cp Dockerfile the-example-app.nodejs/

build:
	docker build -t $(DOCKER_ID)/test_app_gen:latest the-example-app.nodejs

push:
	docker push $(DOCKER_ID)/test_app_gen

build_custom:
	docker build -t $(DOCKER_ID)/test_app:latest the-example-app.nodejs

push_custom:
	docker push $(DOCKER_ID)/test_app


general: clone build push
custom: clone copy build_custom push_custom

.PHONY: general custom clone copy build push