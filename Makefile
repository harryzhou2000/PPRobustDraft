

file=PPRobustDraft

all: pdf
	make pdfp
	bibtex $(file)
	make pdfp
	make pdf
	

pdf:
	pdflatex $(file).tex

pdfp:
	pdflatex $(file).tex -draftmode
