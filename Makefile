

all: study_guide

study_guide:
	latex $@.tex

title:
	latex $@

clean:
	@rm -f *~ *.log *.toc *.aux

allclean: clean
	@rm -f *.dvi *.pdf


