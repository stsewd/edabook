# Cuys

_**Temas**_: _matrices_, _recursividad_, _programación dinámica_

De la granja de Juan Pérez se escaparon **M** cuys, se tiene una carretera con **N** carriles y una distancia de la vía **D**, se ingresa las posiciones de los **M** cuys con referencia a la vía, se conoce que dicha vía se divide por bloques y en cada bloque puede estar o no un cuy. El reto es encontrar el número de caminos que existen para llegar al extremo de la vía sin matar a ningún cuy. Sabiendo que los movimientos posibles del conductor son 3: hacia arriba, derecha; hacia abajo, derecha; y hacia la derecha.

## Entrada

> La primer línea contiene el número de cuys, la segunda línea el número de vías, y la tercer línea la longitud de la carretera.
> Luego se tiene **M** líneas que indican la posición de un cuy dentro de la carretera.

## Salida

> El número de caminos existentes para llegar a la otra vía sin matar a un cuy, si se parte desde la esquina superior de la carretera (posición 0, 0).

---

## Ejemplos

### Entrada 0

> 3
>
> 4
>
> 5
>
> 0, 3
>
> 1, 1
>
> 2, 4

### Salida 0

> 6

### Explicación

> Existen 6 caminos diferentes que se pueden tomar sin matar a ningún cuy partiendo desde la posició (0, 0).

---

## Solución 1

> Solución simple, usando recursividad.

```C
#include <stdio.h>
#include <stdlib.h>

int num_filas = 4, num_columnas = 5;

int matriz[5][5] = {{0, 0, 0, 1, 0},
                    {0, 1, 0, 0, 0},
                    {0, 0, 0, 0, 1},
                    {0, 0, 0, 0, 0}
                   };


int caminos(int fila, int columna) {
    int contador = 0;

    if (columna == num_columnas - 1) {
        return 1;
    }

    if (fila != 0 && matriz[fila - 1][columna + 1] != 1) {
        contador += caminos(fila - 1, columna + 1);
    }

    if (matriz[fila][columna + 1] != 1) {
        contador += caminos(fila, columna + 1);
    }

    if (fila != num_filas - 1 && matriz[fila + 1][columna + 1] != 1) {
        contador += caminos(fila + 1, columna + 1);
    }

    return contador;
}


int main(int argc, char const *argv[]) {
    int numero_caminos;
    numero_caminos = caminos(0, 0);
    printf("%d\n", numero_caminos);

    return 0;
}

```

## Solución 2

> Solución mejorada, usando programación dinámica.

```C
#include <stdio.h>
#include <stdlib.h>

int num_filas = 4, num_columnas = 5;

int matriz[5][5] = {{0, 0, 0, 1, 0},
                    {0, 1, 0, 0, 0},
                    {0, 0, 0, 0, 1},
                    {0, 0, 0, 0, 0}
                };

int cache[5][5] = {{-1, -1, -1, -1, -1},
                   {-1, -1, -1, -1, -1},
                   {-1, -1, -1, -1, -1},
                   {-1, -1, -1, -1, -1}
               };

int caminos(int fila, int columna) {
    int contador = 0;

    if (cache[fila][columna] != -1) {
        return cache[fila][columna];
    }

    if (columna == num_columnas - 1) {
        return 1;
    }

    if (fila != 0 && matriz[fila - 1][columna + 1] != 1) {
        contador += caminos(fila - 1, columna + 1);
    }

    if (matriz[fila][columna + 1] != 1) {
        contador += caminos(fila, columna + 1);
    }

    if (fila != num_filas - 1 && matriz[fila + 1][columna + 1] != 1) {
        contador += caminos(fila + 1, columna + 1);
    }

    cache[fila][columna] = contador;
    return contador;
}


int main(int argc, char const *argv[]) {
    int numero_caminos;
    numero_caminos = caminos(0, 0);
    printf("%d\n", numero_caminos);

    return 0;
}

```
