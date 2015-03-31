MDS := $(wildcard src/*/*.md)
HTMLS := $(MDS:.md=.html)
GENERATED_HTMLS := $(wildcard src/*/*.html)

default: gen

%.html: %.md
	pandoc $< -o $@ --id-prefix $(shell echo $*/ | sed ' s|^src/||')

gen: $(HTMLS)
	genblog src dst

tool:
	cd $(GOPATH)/src/github.com/xiaq/genblog; go generate; go get

publish: gen
	rsync -av --delete ./dst/ xiaqsdo:xiaq.me/

clean:
	rm $(GENERATED_HTMLS)
	rm -r dst

.PHONY: default gen tool publish clean
