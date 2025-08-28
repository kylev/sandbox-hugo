HUGO=hugo

.PHONY: build build-min clean dev

build: clean
	$(HUGO) build

build-min: clean
	$(HUGO) build --minify

clean:
	rm -rf public/

dev: clean
	$(HUGO) server --buildDrafts --logLevel debug
