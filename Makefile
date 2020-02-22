JOB := phd_thesis
FMT := $(JOB).fmt
HEADER := $(JOB).tex $(wildcard preamble/*.tex) $(wildcard figures/preamble/*.tex)

.PHONY: all figures preview clean

all: $(JOB).pdf

figures:
	$(MAKE) -C figures

$(FMT): $(HEADER)
	lualatex --shell-escape -ini -jobname="$(JOB)" "&lualatex mylatexformat.ltx $(JOB).tex"

$(JOB).pdf: $(FMT) figures
	latexmk

preview: all
	latexmk -pvc

clean:
	rm $(FMT)
	$(MAKE) -C figures clean
	latexmk -c
