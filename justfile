main_tex := "main.tex"
chapters := "chapters/ch1.tex chapters/ch2.tex"
bib := "references.bib"
pdf := "main.pdf"

build:
    tectonic --keep-intermediates --synctex --outdir=. {{main_tex}}
    biber main
    tectonic --keep-intermediates --synctex --outdir=. {{main_tex}}

clean:
    rm -f *.aux *.bbl *.bcf *.blg *.log *.out *.run.xml *.toc {{pdf}}

watch:
    watchexec -e tex,bib -w chapters -w . 'just build'

