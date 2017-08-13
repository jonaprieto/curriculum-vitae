TEX   = pandoc
src   = cv.tex cv.yml
FLAGS = --latex-engine=xelatex

.PHONY : tex
tex: $(src)
	pandoc cv.yml -o cv.pdf --template=cv.tex $(FLAGS)

.PHONY: clean
clean :
	rm cv.pdf

.PHONY : default
default : tex