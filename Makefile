PUBLISH_DIR = ./website

publish:
	mkdir -p $(PUBLISH_DIR)/src
	cp *.md $(PUBLISH_DIR)/src
	cp -r Data $(PUBLISH_DIR)/src/Data
	cp book.toml $(PUBLISH_DIR)
	mv $(PUBLISH_DIR)/src/README.md $(PUBLISH_DIR)/src/index.md
	touch $(PUBLISH_DIR)/src/SUMMARY.md
	cd $(PUBLISH_DIR) && mdbook build
