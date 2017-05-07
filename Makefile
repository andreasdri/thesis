# Base name of final output
DOC_PDF = thesis

all: $(DOC_PDF).pdf

$(DOC_PDF).pdf: $(DOC_PDF).tex content/*.tex referanser.bib
	latexmk $< -pdf

clean:
	latexmk -c

.PHONY: all clean

