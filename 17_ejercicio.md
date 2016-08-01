# Sherlock Holmes y la Bestia

_**Temas**_: _bucles_, _arreglos_

Sherlock Holmes sospecha que su archienemigo , el profesor Moriarty, es una vez más está tramando algo diabólico. El compañero de Sherlock, el Dr. Watson, sugiere Moriarty puede ser el responsable de los últimos números del MI6 con su super-computador, la bestia.

Poco después, Sherlock recibe una nota de Moriarty alarde de infectar La bestia con un virus; Sin embargo, también le da una pista: un número, N. Sherlock determina la clave para eliminar el virus es encontrar el mayor **número decente** que tiene n dígitos.

Un **número decente** tiene las siguientes propiedades:

1.  Los digitos solo pueden ser 3 y/o 5.
2.  El número que contiene 3, solo es divisible para 5.
3.  El número que contiene 5, solo es divisible para 3.
4.  Si hay más de uno de esos números, se elige el más grande.

El **virus** de Moriarty tiene un reloj de cuenta regresiva para la destrucción de la bestia, y el tiempo se acaba rápido. La tarea es ayudar a Sherlock encontrar la **llave** antes de la bestia es destruida!.

## Entrada

> En la primera linea se ingresa un entero T, el cual va ser el número de casos de prueba que se va a realizar.
>
> Las líneas posteriores T contienen cada uno un número entero, N, detallando el número de dígitos del número.

## Salida

> Imprimir el mayor número decente que tiene N dígitos; si no existe tal número , informe a Sherlock mediante impresión -1.

---

## Ejemplos

### Entrada 0

> 4
>
> 1
>
> 3
>
> 5
>
> 11

### Salida 0

> -1
>
> 555
>
> 33333
>
> 55555533333

---

## Solución

```C
#include <stdio.h>
#include <string.h>

void largestDecentNumber(int digits){
    int found = -1;
    for(int i = 0; i <= digits; ++i){
        int aux = digits-i;
        if((aux%5 + i%3) == 0) found = i;
    }
    if(found == -1) printf("-1");
    else{
        for(int i = 0; i < found; ++i) printf("5");
        for(int i = found; i < digits; ++i)printf("3");
    }
    return;
}
int main() {
    int T;
    scanf("%d",&T);
    for(int i = 0; i < T; ++i){
        int N;
        scanf("%d",&N);
        largestDecentNumber(N);
        printf("\n");
    }
    return 0;
}
```
