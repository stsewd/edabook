#! /bin/bash

FILES="src/00_portada.md \
    src/00.1_legal.md \
    src/00.2_agredecimientos.md \
    src/01_prologo.md"

OUTPUT="build/edabook.pdf"
FLAGS="--toc --chapters -V lang=es"

pandoc -o $OUTPUT $FLAGS $FILES
