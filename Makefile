MDS := $(wildcard src/*/*.md)
HTMLS := $(MDS:.md=.html)
ALL_HTMLS := $(wildcard src/*/*.html)

default: gen

%.html: %.md
	pandoc $< -o $@

gen: $(HTMLS)
	genblog src dst

publish: gen
	rsync -av --delete ./dst/ xiaqsdo:blog/

clean:
	rm $(ALL_HTMLS)
	rm -r dst

.PHONY: gen publish
