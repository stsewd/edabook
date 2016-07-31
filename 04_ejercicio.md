# Festín de chocolate

_**Temas**_: _bucles_

Bob ama el chocolate, y se dirige a la tienda con **$N**. El precio de cada chocolate es **$C**. La tienda ofrece un descuento: por cada **M** envolturas, recibes un chocolate gratis. ¿Cuántos chocolates puede obtener Bob?

## Entrada

> La primera línea contiene un entero **N**, la cantidad de dinero que tiene Bob. La segunda línea contiene un entero **C**, el precio de cada chocolate. Y la última línea contiene un entero **M**, el número de envolturas por las cuales puede obtener un chocolate gratis.

## Salida

> Mostrar el número total de chocolates que puede obtener Bob.

---

## Ejemplos

### Entrada 0

> 6
>
> 2
>
> 2
>

### Salida 0

> 5

### Explicación

> Con $6 Bob compra 3 chocolates, por lo tanto obtiene 3 envolturas. Ocupa 2 envolturas para reclamar un chocolate gratis. Ahora Bob tiene un total de 2 envolturas, las cuales usa para obtener otro chocolate gratis. En total Bob obtuvo 5 chocolates.

### Entrada 1

> 37
>
> 3
>
> 7

### Salida 1

> 13

### Entrada 2

> 369
>
> 96
>
> 33

### Salida 2

> 3

### Entrada 3

> 44112
>
> 389
>
> 22785

### Salida 3

> 1

---

## Solución

```C
#include <stdio.h>
#include <stdbool.h>

int main() {
    int dinero_total;
    int valor_por_chocolate;
    int envolturas_para_promocion;

    printf("Dinero total:");
    scanf("%d", &dinero_total);

    printf("Valor de cada chocolate:");
    scanf("%d", &valor_por_chocolate);

    printf("Numero de envolturas para promocion:");
    scanf("%d", &envolturas_para_promocion);

    int chocolates_obtenidos = dinero_total/valor_por_chocolate;
    int envolturas = chocolates_obtenidos;

    while(envolturas >= envolturas_para_promocion){
        chocolates_obtenidos++;
        envolturas =  envolturas - envolturas_para_promocion + 1;
    }

    printf("Numero de chocolates obtenidos: %d\n", chocolates_obtenidos);

    return 0;
}

```
