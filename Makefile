JOB := phd_thesis
FMT := $(JOB).fmt
HEADER := $(JOB).tex $(wildcard preamble/*.tex figures/preamble/*.tex)


all: $(FMT)
	latexmk

$(FMT): $(HEADER)
	lualatex --shell-escape -ini -jobname="$(JOB)" "&lualatex mylatexformat.ltx $(JOB).tex"

preview: $(FMT)
	latexmk -pvc

cleanHeader:
	rm $(FMT)

clean: cleanHeader
	latexmk -c
