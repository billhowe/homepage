
REPORT=resume
NAME=biosketch
REFS=$(wildcard *.bib)
LATEX=latex
BIBTEX=bibtex

SRCS=$(wildcard *.tex)

all: pdf

#$(REPORT).dvi $(REPORT).ps


$(REPORT).dvi: $(SRCS) $(REFS)
	$(LATEX) $(REPORT)
	$(LATEX) $(REPORT)
	./makebib
	$(LATEX) $(REPORT)

$(REPORT).ps: $(REPORT).dvi
	dvips -t letter $(REPORT).dvi -o $(REPORT).ps

pdf: $(REPORT).dvi	
	dvipdf $(REPORT).dvi $(REPORT).pdf
	mv $(REPORT).pdf $(NAME).pdf


view: $(REPORT).dvi
	xdvi $(REPORT).dvi

print: $(REPORT).dvi
	dvips $(REPORT).dvi

clean:
	rm -f *.dvi *.aux *.log *.blg *.bbl  $(NAME).ps $(NAME).pdf
