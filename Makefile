JOB := phd_thesis
FMT := $(JOB).fmt
HEADER := $(JOB).tex $(wildcard preamble/*.tex) $(wildcard figures/preamble/*.tex)

.PHONY: all figures preview clean

all: $(JOB).pdf

figures:
	$(MAKE) -C figures

$(FMT): $(HEADER)
	lualatex --shell-escape -ini -jobname="$(JOB)" "&lualatex mylatexformat.ltx $(JOB).tex"

# By default assume pre-made figures
$(JOB).pdf: $(FMT)
	latexmk

full: figures $(JOB).pdf

preview: all
	latexmk -pvc

github: $(JOB).pdf

clean:
	$(RM) $(FMT)
	$(MAKE) -C figures clean
	latexmk -c
	$(RM) *.aux
