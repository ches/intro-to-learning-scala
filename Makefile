PANDOC := pandoc
TIDY := tidy

THEME := black
CODETHEME := zenburn

src := index.md
target := index.html

pres: $(target)

# TODO: local fontawesome fonts for offline
$(target): $(src) Makefile templates/highlightjs.revealjs
	$(PANDOC) \
		--to revealjs --standalone $(src) \
		--template=templates/highlightjs.revealjs \
		--slide-level=2 \
		--no-highlight \
		--variable=theme:$(THEME) \
		--variable=hljs-theme:$(CODETHEME) \
		--variable=css:https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css \
		--output $(target)

	$(TIDY) -quiet -modify -indent --drop-empty-elements false --wrap 0 $(target)

clean:
	$(RM) $(target)

.PHONY: clean pres
