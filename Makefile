HUGO ?= hugo
BIND ?= 127.0.0.1

.PHONY: all build drafts serve check clean
all: build

build:
	$(HUGO) --gc --cleanDestinationDir

drafts:
	$(HUGO) server --buildDrafts --ignoreCache --noHTTPCache --watch --bind "$(BIND)"

serve:
	$(HUGO) server --ignoreCache --noHTTPCache --watch --bind "$(BIND)"

check:
	$(HUGO) --buildDrafts --panicOnWarning --cleanDestinationDir
	$(HUGO) --panicOnWarning --destination public-release --cleanDestinationDir
	@status=0; grep -rl --include='*.html' 'class="draft"' public-release || status=$$?; test "$$status" -eq 1

clean:
	rm -rf public public-release resources/_gen
