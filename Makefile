wc=`detex Thesis| wc -w`
all:
	pdflatex Thesis
	makeindex Thesis.nlo -s nomencl.ist -o Thesis.nls
	bibtex Thesis
	pdflatex Thesis
	pdflatex Thesis
	@echo "Wordcount of Thesis: $(wc)"