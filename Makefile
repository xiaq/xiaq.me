MDS := $(wildcard src/*/*.md)
HTMLS := $(MDS:.md=.html)
ALL_HTMLS := $(wildcard src/*/*.html)

default: gen

%.html: %.md
	pandoc $< -o $@ --id-prefix $(shell echo $*/ | sed ' s|^src/||')

gen: $(HTMLS)
	genblog src dst

go:
	cd $(GOPATH)/src/github.com/xiaq/genblog; go generate; go get

go-gen: go gen

publish: gen
	rsync -av --delete ./dst/ xiaqsdo:xiaq.me/

clean:
	rm $(ALL_HTMLS)
	rm -r dst

.PHONY: gen go go-gen publish clean
