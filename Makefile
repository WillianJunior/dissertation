paper.pdf: img/* tex/* main.tex *.bib
	pdflatex main
	bibtex main
	pdflatex main
	bibtex main
	pdflatex main

clean:
	rm -f *.log *.aux *.bbl *.blg *.dvi *.lot *.toc *.lof *.acn *.brf *.glo *.glsdefs *.ist main.out main.pag main.pdf
