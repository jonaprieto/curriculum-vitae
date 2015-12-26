TEX = pandoc
src = cv.tex data.yml
FLAGS = --latex-engine=xelatex

cv.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm cv.pdf
