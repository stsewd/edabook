#! /bin/bash

cd src/

FILES="00_portada.md \
    00.1_legal.md \
    00.2_agredecimiento.md \
    01_prologo.md \
    03_ejercicio.md \
    04_ejercicio.md \
    05_ejercicio.md \
    06_ejercicio.md \
    07_ejercicio.md \
    08_ejercicio.md \
    09_ejercicio.md \
    10_ejercicio.md \
    11_ejercicio.md \
    16_ejercicio.md \
    17_ejercicio.md
    "

OUTPUT="../build/edabook.pdf"

FLAGS="--template=../template.latex \
    -f markdown \
    --toc --toc-depth=2 \
    --chapters \
    -V lang=es \
    -V documentclass=book \
    -V secnumdepth=2"

pandoc -o $OUTPUT $FLAGS $FILES
