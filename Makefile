BASE_IMAGE_VERSION := v0.0.2
BASE_IMAGE_REPO := "foo.example.com/base_image
BASE_IMAGE := $(BASE_IMAGE_REPO):$(BASE_IMAGE_VERSION)

PROJECT_MKFILE_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

.PHONY: build
build: ## build docker image
	docker build -t $(BASE_IMAGE) $(PROJECT_MKFILE_DIR)
