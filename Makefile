PDFLATEX = pdflatex
BIBTEX = bibtex
DATEINAME = Ein_Einstieg_in_LaTeX

all:
	$(PDFLATEX) $(DATEINAME).tex
	$(BIBTEX) $(DATEINAME)
	makeindex $(DATEINAME)
	$(PDFLATEX) $(DATEINAME).tex
	
pdf:
	find -name *.tex -exec xpdf {} \;

clean:
	rm *.snm *.vrb *.nav *.log *.toc *.tpm *.dvi *.aux *.out *.bbl *.blg *.idx *.lot *.lof *.ilg *.bib *.ind


