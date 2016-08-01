FILES = 00.1_legal.md \
	    00.2_agredecimiento.md \
	    01_prologo.md \
		02_ejercicio.md \
	    03_ejercicio.md \
	    04_ejercicio.md \
	    05_ejercicio.md \
	    06_ejercicio.md \
	    07_ejercicio.md \
	    08_ejercicio.md \
	    09_ejercicio.md \
	    10_ejercicio.md \
	    11_ejercicio.md \
	    12_ejercicio.md \
	    13_ejercicio.md \
	    14_ejercicio.md \
	    15_ejercicio.md \
	    16_ejercicio.md \
	    17_ejercicio.md \
	    18_ejercicio.md \
	    19_ejercicio.md \
	    20_ejercicio.md \
	    21_ejercicio.md

OUTPUT = build/edabook.pdf

FLAGS = --template=template.latex \
	    -H titlesec.tex \
	    -f markdown_github \
	    --toc --toc-depth=2 \
	    --chapters \
	    -V lang=es \
	    -V documentclass=report \
	    -V secnumdepth=2 \
	    -M title='Estructura de Datos y Algoritmia' \
	    -M author='RECOPILACIÓN DE EJERCICIOS EN C'

all:
	pandoc -o $(OUTPUT) $(FLAGS) $(FILES)

clean:
	rm build/edabook.pdf
