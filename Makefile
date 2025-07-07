

targets=main

all: $(addsuffix .pdf, $(targets))


%.pdf: %.tex
	pdflatex $< -draftmode
	bibtex $*
	pdflatex $< -draftmode
	pdflatex $<

.PHONY:clean

clean:
	rm -f $(addsuffix .pdf, $(targets))
	rm -f $(addsuffix .aux, $(targets))
	rm -f $(addsuffix .blg, $(targets))
	rm -f $(addsuffix .fdb_latexmk, $(targets))
	rm -f $(addsuffix .log, $(targets))
	rm -f $(addsuffix .out, $(targets))
	rm -f $(addsuffix .synctex.gz, $(targets))
	rm -f $(addsuffix .fls, $(targets))
	rm -f $(addsuffix .bbl, $(targets))
	rm -f $(addsuffix .spl, $(targets))

	
	


	
