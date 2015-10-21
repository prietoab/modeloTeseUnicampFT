#!/bin/bash

rm principal.pdf *.nls *.ind *.blg *.bbl *.aux *.lof *.nlo *.lot *.toc *.log *.ilg *.idx 
pdflatex principal.tex
makeindex principal.idx
makeindex principal.nlo -s nomencl.ist -o principal.nls
bibtex principal.aux
pdflatex principal.tex
pdflatex principal.tex
