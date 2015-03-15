# Compile LilyPond files the pro way

LYS := $(wildcard *.ly)
PDFS := $(LYS:.ly=.pdf)
LILYPOND := lilypond --loglevel=WARNING
INCLUDES := shared.ily

all: version $(PDFS)

%.pdf: %.ly $(INCLUDES)
	$(LILYPOND) $<

clean:
	rm -f *.midi *.pdf

version:
	@ $(LILYPOND) --version | head -n 1

.PHONY: clean version
