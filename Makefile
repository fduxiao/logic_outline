outline.pdf:outline.tex
	mkdir -p output
	xelatex -output-directory=output outline.tex
	cp *.bib output/
	cd output && bibtex outline && cd ..
	xelatex -output-directory=output outline.tex
	ln -sv output/outline.pdf .
all:outline.pdf
clear:
	rm -f *.aux *.log *.out *.pdf *.toc *.synctex.gz *.bbl *.blg 
	rm -r output
clean:clear
