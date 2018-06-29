TEX   = pandoc
src   = cv.tex cv.yml
FLAGS = --pdf-engine=xelatex

.PHONY: default
default: docs/cv.pdf assets/cv.png


.PHONY: clean
clean :
	- rm -f assets/cv.png docs/cv.pdf

assets/%.png : docs/%.pdf
	- @rm -f $@
	- @gs -sDEVICE=png16m \
		 -r1200 \
		 -dPDFFitPage=true \
		 -dDEVICEWIDTHPOINTS=250 \
		 -dDEVICEHEIGHTPOINTS=150 \
		 -dDownScaleFactor=4 \
		 -sOutputFile=$@ \
		 -dLastPage=1 \
		 -dBATCH -dNOPAUSE \
		 $<

docs/cv.pdf: $(src)
	- pandoc cv.yml -o docs/cv.pdf --template=cv.tex $(FLAGS)
	- latexmk -C cv.tex
