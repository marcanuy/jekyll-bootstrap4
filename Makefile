NPM := npm
JS_DIR := assets/vendor/
JEKYLL := jekyll

install:
	$(NPM) install

include-npm-deps:
	mkdir -p $(JS_DIR)
	cp node_modules/bootstrap/dist/js/bootstrap.bundle.min.js $(JS_DIR)

build: install include-npm-deps
	$(JEKYLL) build

serve: install include-npm-deps
	JEKYLL_ENV=production $(JEKYLL) serve
