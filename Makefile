# Compile LilyPond files the pro way

LYS := $(wildcard *.ly) $(wildcard done/*.ly) $(wildcard old/*.ly)
PDFS := $(LYS:.ly=.pdf)
LILYPOND := lilypond --loglevel=WARNING
INCLUDES := shared.ily

all: version $(PDFS)

%.pdf: %.ly $(INCLUDES)
	cd $(dir $<) && $(LILYPOND) $(notdir $<)

clean:
	rm -f *.midi *.pdf done/*.midi done/*.pdf old/*.midi old/*.pdf

version:
	@ $(LILYPOND) --version | head -n 1

.PHONY: clean version
