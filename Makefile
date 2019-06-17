IMAGE_NAME = ubuntu1804-testuser
USER_NAME = testuser

.PHONY: build
build: 
	docker build -t $(IMAGE_NAME) . \
		--build-arg USER=$(USER_NAME)

.PHONY: run
run:
	docker run -it \
		--name $(IMAGE_NAME) \
		$(IMAGE_NAME)

.PHONY: clean
clean:
	- docker rm $(IMAGE_NAME)
	- docker rmi $(IMAGE_NAME)
