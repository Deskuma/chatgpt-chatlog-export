include VERSION.mk
SOURCES = \
	icons \
	chatgpt-conv-export.js \
	manifest.json \
	README.md \
	README-ja.md

all: package

package: $(SOURCES)
	-@rm   chatgpt-conv-export-ext-$(VERSION)-$(MANIFEST_VER).zip
	zip -r chatgpt-conv-export-ext-$(VERSION)-$(MANIFEST_VER).zip $(SOURCES)
