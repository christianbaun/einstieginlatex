GV = gv
LATEX = latex
PDFLATEX = pdflatex
DVIPS = dvips -Ppdf 
PSPDF = ps2pdf -dCompatibilityLevel=1.4 -dOptimize=true -dUseFlateCompression=true 
BIBTEX = bibtex
XDVI = xdvi
THUMBPDF = thumbpdf --modes=ps2pdf
PDLIN = pdlin -user passwort -perm acsp
ACROBAT = acroread
XPDF = xpdf
DATEINAME = Ein_Einstieg_in_LaTeX

all:
	$(PDFLATEX) $(DATEINAME).tex
	$(BIBTEX) $(DATEINAME)
	makeindex $(DATEINAME)
#	$(PDFLATEX) $(DATEINAME).tex
	
pdf:
	find -name *.tex -exec xpdf {} \;

clean:
	rm *.snm *.vrb *.nav *.log *.toc *.tpm *.dvi *.aux *.out *.bbl *.blg *.idx *.lot *.lof *.ilg *.bib *.ind


