latexfile=report
TEX=latex

#defaults to pdf, because that's first. to make a dvi, type "make dvi"
pdf: $(latexfile).tex
	pdflatex $(latexfile).tex
	evince $(latexfile).pdf &

bib: $(latexfile).tex
	pdflatex $(latexfile).tex
	pdflatex $(latexfile).tex
	bibtex $(latexfile)
	pdflatex $(latexfile).tex

clean:
	rm *.aux $(latexfile).log $(latexfile).pdf