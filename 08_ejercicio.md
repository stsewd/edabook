# Triángulo de asteriscos

_**Temas**_: _recursividad_

Se desea formar un triangulo de altura **h**, con una base de **(2x8)-1**. Este triangulo debe ser formado usando funciones recursivas.

## Entrada

> La primer línea contiene **h**, la altura del triangulo.

## Salida

> Triangulo de altura **h**.

---

## Ejemplos

### Entrada 0

> 3

### Salida 0

\*

\*\*

\*\*\*

\*\*

\*

### Explicación

> Si el triangulo es de altura 3 primero se va a imprimir un asterisco, luego 2 asteriscos, hasta llegar a los 3 asteriscos, una vez realizado esto, el numero de astericos a imprimirse se reducira hasta que sea 0.

### Entrada 1

> 10

### Salida 1

\*

\*\*

\*\*\*

\*\*\*\*

\*\*\*\*\*

\*\*\*\*\*\*

\*\*\*\*\*\*\*

\*\*\*\*\*\*\*\*

\*\*\*\*\*\*\*\*\*

\*\*\*\*\*\*\*\*\*\*

\*\*\*\*\*\*\*\*\*

\*\*\*\*\*\*\*\*

\*\*\*\*\*\*\*

\*\*\*\*\*\*

\*\*\*\*\*

\*\*\*\*

\*\*\*

\*\*

\*

---

## Solución

```C
#include <stdlib.h>
#include <stdio.h>

void mostrar(int n){

	if(n == 0){

		printf("\n");
		return;

	}else{

		printf("*");
		mostrar(n-1);

	}

}

void triangulo(int n,int h){

	if(h == 0){

		return;

	}else{

		mostrar(n-h);
		triangulo(n,h-1);
		mostrar(n-h+1);

	}

}

int main(){

	int h;
	printf("Ingrese la altura del triangulo: ");
    scanf("%d",&h);
    triangulo(h,h);
	return 0;

}

```
