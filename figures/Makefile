HEADER := $(wildcard preamble/*.tex ../preamble/*.tex)
FIGURES := $(wildcard *.tex)
FIGURE_PDFS := $(FIGURES:.tex=.pdf)

all: $(FIGURE_PDFS)

$(FIGURE_PDFS): %.pdf: %.tex $(HEADER)
	latexmk $<

clean:
	latexmk -c $(FIGURES)

