# Camino de piedras

_**Temas**_: _bucles_, _matemáticas_

Carla se encuentra con un camino de piedras marcadas con números. Empieza a seguir el camino, y nota que la diferencia entre dos piedras consecutivas es **a** o **b**. Cuenta la leyenda que hay un tesoro al final del camino, si Carla adivina el valor de la última piedra, el tesoro será suyo. Dado el número de la primera piedra es 0 (cero), encuentra todos los posibles valores de la última piedra.

## Entrada

> La primer línea contiene **n**, el número de piedras. La segunda línea contiene **a**, y la tercera contiene **b**.

## Salida

> Una lista de todos los valores posibles de las últimas piedras separadas por un espacio.

---

## Ejemplos

### Entrada 0

> 3
>
> 1
>
> 2

### Salida 0

> 2 3 4

### Explicación

> Todas las posibles series de piedras son:
>
> 0, 1, 2
>
> 0, 1, 3
>
> 0, 2, 3
>
> 0, 2, 4
>
> Entonces, los posibles valores de la última piedra son:
>
> 2, 3, 4

### Entrada 1

> 6
>
> 4
>
> 8
>

### Salida 1

> 20 24 28 32 36 40

### Entrada 2

> 11
>
> 3
>
> 10

### Salida 2

> 30 37 44 51 58 65 72 79 86 93 100

### Entrada 3

> 100
>
> 1
>
> 1

### Salida 3

> 99

---

## Solución

```C
#include <stdio.h>

int main() {
    int numero_piedras;
    int numero_a, numero_b;
    int min_ultima_piedra, max_ultima_piedra;

    printf("Numero de piedras: "); scanf("%d", &numero_piedras);
    printf("Numero a: "); scanf("%d", &numero_a);
    printf("Numero b: "); scanf("%d", &numero_b);

    min_ultima_piedra = numero_a*(numero_piedras - 1);
    max_ultima_piedra = numero_b*(numero_piedras - 1);

    if(numero_a == numero_b){
        printf("%d ", min_ultima_piedra);
    }else {
        for ( i = min_ultima_piedra;
            i <= max_ultima_piedra;
            i += (numero_b - numero_a) {

            printf("%d ", i);
        }
    }
    printf("\n");

    return 0;
}

```
