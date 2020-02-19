JOB := phd_thesis
FMT := $(JOB).fmt
HEADER := $(JOB).tex $(wildcard preamble/*.tex figures/preamble/*.tex)


all: $(FMT) allFigures
	latexmk

allFigures:
	$(MAKE) $(MFLAGS) -C figures

$(FMT): $(HEADER)
	lualatex --shell-escape -ini -jobname="$(JOB)" "&lualatex mylatexformat.ltx $(JOB).tex"

preview: all
	latexmk -pvc

clean:
	rm $(FMT)
	$(MAKE) $(MFLAGS) -C figures clean
	latexmk -c
