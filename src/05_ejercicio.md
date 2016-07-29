# Salva al prisionero

_**Temas**_: _aritmética modular_, _matemáticas_

En una cárcel hay **N** prisioneros, y cada uno tiene un identificador único **S**, en el rango de **1** a **N**. Hay **M** caramelos que deben ser entregados a cada prisionero. Dado que no siempre el número de caramelos es igual al de prisioneros, se decide sentar a los prisioneros en un círculo, ordenados por su id. Y se distribuyen los caramelos consecutivamente empezando por un id **S** aleatorio hasta que se terminen los caramelos. Pero hay una trampa, ¡el último caramelo está envenenado! ¿Puedes encontrar el id del prisionero que reciba el último caramelo, y así ser advertido?

## Entrada

> La primera línea contiene un entero **N**, el número de prisioneros. La segunda línea contiene un entero **M**, el número de caramelos. Y la tercer línea contiene un entero **S**, el id del prisionero.

## Salida

> Mostrar el id del prisionero que recibirá el caramelo envenenado.

---

## Ejemplos

### Entrada 0

> 5
>
> 4
>
> 3

### Salida 0

> 1

### Explicación

> Hay 5 prisioneros y 4 caramelos. Empezamos a repartir el primer caramelo al prisionero de id 3, hasta llegar al prisionero de id 5 se ha repartido 3 caramelos. Se entrega el cuarto caramelo al prisionero de id 1. Entonces, el último caramelo lo recibe el prisionero de id 1.

### Entrada 1

> 54
>
> 111
>
> 6

### Salida 1

> 8

### Entrada 2

> 499999999
>
> 999999998
>
> 2

### Salida 2

> 1

### Entrada 3

> 287704511
>
> 903048419
>
> 110994298

### Salida 3

> 150929183

---

## Solución

```C
#include <stdio.h>

int main() {
    int num_prisioneros;
    int num_caramelos;
    int id_prisionero;

    printf("Numero de prisioneros: ");
    scanf("%d", &num_prisioneros);

    printf("Numero de caramelos: ");
    scanf("%d", &num_caramelos);

    printf("ID de prisionero: ");
    scanf("%d", &id_prisionero);

    int id_ultimo_prisionero;

    // Se resta uno para empezar a repartir desde el prisionero actual.
    id_ultimo_prisionero = (num_caramelos + id_prisionero - 1) % num_prisioneros;

    if(id_ultimo_prisionero == 0){
        id_ultimo_prisionero = num_prisioneros;
    }
    printf("ID del ultimo prisionero: %d\n", id_ultimo_prisionero);

    return 0;
}

```
