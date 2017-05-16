# Base name of final output
DOC_PDF = thesis
CONTENT = $(DOC_PDF).tex content/*.tex referanser.bib

all: $(DOC_PDF).pdf

$(DOC_PDF).pdf: $(CONTENT)
	latexmk $< -pdf

watch:
	latexmk $(DOC_PDF).tex -pdf -pvc

clean:
	latexmk -c

.PHONY: all clean

