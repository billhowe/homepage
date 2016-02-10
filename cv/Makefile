REPORT=billhowe_cv
LATEX=pdflatex
BIBTEX=bibtex

SRCS=$(wildcard *.tex)
REFS=$(wildcard *.bib)
FIGS=$(wildcard figures/*)

all: $(REPORT).pdf

$(REPORT).pdf: $(SRCS) $(REFS) $(FIGS) 
	$(LATEX) $(REPORT)
	$(BIBTEX) $(REPORT)
	$(LATEX) $(REPORT)
	$(LATEX) $(REPORT)

pdf: $(REPORT).pdf

count: response.txt
	grep -Ev "^#" $^ | wc -c

clean:
	rm -f *.dvi *.aux *.log *.blg *.bbl *~ $(REPORT).ps $(REPORT).pdf
