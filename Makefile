all: brainhack-report-formatted.tex
	pdflatex brainhack-report-formatted.tex
	bibtex brainhack-report-formatted
	pdflatex brainhack-report-formatted.tex
	pdflatex brainhack-report-formatted.tex
	texcount brainhack-report-formatted.tex

brainhack-report-formatted.tex: brainhack-report-template.tex brainhack-report.bib brainhack-report.md
	pandoc -s -S -N --template brainhack-report-template.tex brainhack-report.md -o brainhack-report-formatted.tex
	
gen: brainhack-report-formatted-generic.tex
	pdflatex brainhack-report-formatted-generic.tex
	bibtex brainhack-report-formatted-generic
	pdflatex brainhack-report-formatted-generic.tex
	pdflatex brainhack-report-formatted-generic.tex
	texcount brainhack-report-formatted-generic.tex

brainhack-report-formatted-generic.tex: brainhack-report-generic-template.tex brainhack-report.bib brainhack-report.md
	pandoc -s -S -N --template brainhack-report-generic-template.tex brainhack-report.md -o brainhack-report-formatted-generic.tex
	

clean:
	rm *.aux *.bbl *.log *.blg *.out
