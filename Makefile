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

# For time reasons, assume that figures are precompiled in the github CI
github: $(FMT)
	latexmk

clean:
	$(RM) $(FMT)
	$(MAKE) -C figures clean
	latexmk -c
	$(RM) *.aux
