.DEFAULT_GOAL := build

.PHONY: build
build:
	mdbook build

.PHONY: serve
serve:
	mdbook serve -o

.PHONY: deploy
deploy: book
	git worktree add /tmp/book gh-pages
	rm -rf /tmp/book/*
	cp -rp book/* /tmp/book/
	cd /tmp/book && \
		git add -A && \
		git commit -m "Deployed on $(shell date) by ${USER}" && \
		git push origin gh-pages
