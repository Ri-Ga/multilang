README = README.md
NAME   = multilang
INS    = $(NAME).ins
PKG    = multilang.sty multilang-tags.sty multilang-sect.sty
DOC    = $(NAME).pdf
SRC    = $(NAME).dtx
CTAN = $(SRC) $(INS) $(DOC) $(README)

all: package docs
.PHONY: all package docs clean cleanall ctan

package: $(PKG)
docs:    $(DOC)

%.sty: %.dtx $(INS)
	latex $(INS)

%.pdf: %.dtx %.sty
	pdflatex $<
	makeindex -s gind.ist -o $*.ind $*.idx
	makeindex -s gglo.ist -o $*.gls $*.glo
	pdflatex $<
	pdflatex $<

ctan: $(CTAN)
	mkdir $(NAME)
	cp $(CTAN) $(NAME)/
	zip -r $(NAME)-$(shell date "+%Y-%m-%d").zip $(NAME)
	rm -rf $(NAME)

clean:
	rm -f *.{aux,glo,gls,hd,idx,ilg,ind,log,out,toc,tmp}

