# Verificar Suma

_**Tema**_: _condicionales_


Se pide desarrollar un algoritmo que lea tres números y determine si la suma de cualquier pareja de ellos es igual al tercer número. Si se cumple la regla indicada visualizar un mensaje indicando que se cumple y sino indicando que no se cumple.


## Entrada

> Se recibiran los 3 números por pantalla **Numero1**, **Numero2**, **Numero3**.

## Salida

> Mensaje que indica si la comparación de la suma a sido CORRECTA o INCORRECTA.

---

## Ejemplos

### Entrada 0

> 1
>
> 2
>
> 3

### Salida 0

> La comparación ha sido CORRECTA.

### Entrada 1

> 3
>
> 4
>
> 5

### Salida 1

> La comparación ha sido INCORRECTA.

## Solución

```C
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
    int Numero1=0;
    int Numero2=0;
    int Numero3=0;
    int Existe=0;  

    printf("\nTeclee No. 1 : ");
    scanf(" %d",&Numero1);

    printf("Teclee No. 2 : ");
    scanf(" %d",&Numero2);
    
    printf("Teclee No. 3 : ");
    scanf(" %d",&Numero3);

    if ((Numero1+Numero2)==Numero3 || (Numero1+Numero3)==Numero3 ||
       (Numero2+Numero3)==Numero3) {

         printf("\nLa comparacion ha sido CORRECTA");
    } else {
           printf("\nLa comparacion ha sido INCORRECTA");
    }

    return 0;
}

```
