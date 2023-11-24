# Phony targets for managing build and cleanup.
.PHONY: compile all clean

# Default target "all" depends on "compile."
all: compile

# Change directory to "src" and compile "cheatsheet.tex" into a PDF.
compile: src/cheatsheet.tex
	cd src ; latexmk -pdf -pdflatex="pdflatex" -use-make -output-directory=../docs cheatsheet.tex

# Change directory to "src" and clean up intermediate files and PDF output.
clean:
	cd src ; latexmk -CA
