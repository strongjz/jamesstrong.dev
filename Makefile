DOCKER       	= docker
HUGO_VERSION 	= 0.91.2
DOCKER_IMAGE	= k8-hugo:0.0.1
DOCKER_RUN		= $(DOCKER) run --rm --interactive --tty --volume $(PWD):/src
THEME        	= blackburn
ARCH		 	= macOS-ARM64
DOCKER_PLAT 	= darwin/amd64
.PHONY: all build build-preview serve docker-all

all: build ## Build site with production settings

build: ## Build site with production settings
	hugo

build-preview: ## Build site with drafts and future posts enabled
	hugo -D -F

production-build: build

non-production-build: ## Build the non-production site, which adds noindex headers to prevent indexing
	hugo --enableGitInfo

serve:
	hugo server

serve-dev: ## Boot the development server.
	hugo -D server --ignoreCache --disableFastRender

docker-all: docker-build docker-serve

docker-build:
	$(DOCKER) buildx build --platform $(DOCKER_PLAT) . --tag $(DOCKER_IMAGE) --build-arg HUGO_VERSION=$(HUGO_VERSION) --build-arg ARCH=$(ARCH)

docker-hugo:
	$(DOCKER_RUN) $(DOCKER_IMAGE) hugo

docker-serve:
	docker run --rm -it \
      -v $(pwd):/src \
      -p 1313:1313 \
      klakegg/hugo:0.91.2 \
      server
