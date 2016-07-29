#! /bin/bash

FILES="src/00_portada.md \
    src/00.1_legal.md \
    src/00.2_agredecimientos.md \
    src/01_prologo.md \
    src/03_ejercicio.md \
    src/04_ejercicio.md \
    src/05_ejercicio.md \
    src/06_ejercicio.md \
    src/07_ejercicio.md \
    src/08_ejercicio.md"

OUTPUT="build/edabook.pdf"
FLAGS="-f markdown_github --toc --chapters -V lang=es"

pandoc -o $OUTPUT $FLAGS $FILES
