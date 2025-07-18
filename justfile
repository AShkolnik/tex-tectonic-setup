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
    watchexec --postpone \
      --filter 'main.tex' \
      --filter 'chapters/**/*.tex' \
      --ignore 'build/**' \
      --ignore '**/*.pdf' \
      --ignore '**/*.aux' \
      --ignore '**/*.bbl' \
      --ignore '**/*.bcf' \
      --ignore '**/*.blg' \
      --ignore '**/*.log' \
      --ignore '**/*.out' \
      --ignore '**/*.run.xml' \
      --ignore '**/*.toc' \
      --ignore '**/*.synctex.gz' \
      --ignore '**/*.fls' \
      --ignore '**/*.fdb_latexmk' \
      --ignore '**/*.figlist' \
      --ignore '**/*.makefile' \
      --ignore '**/*.tmp' \
      --debounce 300ms \
      just build
