JOB := phd_thesis
FMT := $(JOB).fmt
HEADER := $(JOB).tex $(wildcard preamble/*.tex) $(wildcard figures/preamble/*.tex)


all: $(FMT) figures
	latexmk

.PHONY: figures
figures:
	$(MAKE) -C figures

$(FMT): $(HEADER)
	lualatex --shell-escape -ini -jobname="$(JOB)" "&lualatex mylatexformat.ltx $(JOB).tex"

preview: all
	latexmk -pvc

clean:
	$(RM) $(FMT)
	$(MAKE) -C figures clean
	latexmk -c
	$(RM) *.aux
