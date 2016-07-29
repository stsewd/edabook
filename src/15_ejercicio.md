# Búsqueda en anchura: alcance más corto

_**Temas**_: _grafos_

Dado un grafo no dirigido que consta de N nodos (etiquetados 1 a N) , donde un determinado nodo S dado representa la posición de inicio y un borde entre dos nodos es de longitud 6 unidades en el grafo.

Se requiere para el cálculo de la distancia más corta desde la posición de inicio ( nodo S ) para todos los otros nodos en el grafo.

- Si un nodo es inalcanzable, la distancia se asume como -1.
- La longitud de cada borde en el grafo es de 6 unidades.

## Restriciones

> `1<= T <=10`
>
> `2<= N <=1000`
<
> `1<= M <= (N x (N-1))/2`
>
> `1<= x,y,S <=N`

## Entrada

> En la primera linea se ingresa un entero T, el cual va ser el número de casos de prueba que se va a realizar.

> La primera línea de cada caso de prueba tiene dos enteros N , que denota el número de nodos en el grafo y M , que indica el número de aristas en el grafo.

> Las siguientes líneas M se componen cada uno de dos números enteros separados por espacios x y, donde x e y denotan los dos nodos entre los que existe el borde .

>la última línea de un caso de prueba tiene un entero S , que indica la posición de partida .

## Salida

> Para cada uno de los casos de prueba T, imprimir una sola línea que consiste en N - 1 enteros separados por espacios , que denota las distancias más cortas de los nodos N - 1 desde la posición de partida S. Esto se hará para todos los mismos nodos como en el orden de entrada 1 a N.

> Para los nodos inalcanzables, se imprime -1.

---

## Ejemplos

### Entrada 0

> `2`
>
> `4` `2`
>
> `1` `2`
>
> `1` `3`
>
> `1`
>
> `3` `1`
>
> `2` `3`
>
>`2`

### Salida 0

> `6` `6`  `-1`
>
> `-1` `6`

---

## Solución

```C
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

#define DESDE 0
#define TO 1
#define DISTANCIA 0
#define ESTADO 1
#define AGOTADO 0
#define PENDIENTE 1
#define ESP 6

int main() {
    int casos, nodos, bordes, activado, i, origen;
    int nodo[1000+1][2];
    int borde[1000*(1000-1)/2+1][2];

    scanf("%d", &casos);

    while(casos--){
        scanf("%d%d", &nodos, &bordes);
        for(i=1; i <= bordes; i++){
            scanf("%d%d", &borde[i][DESDE], &borde[i][TO]);
        }
        for(i=1; i <= nodos; i++){
            nodo[i][DISTANCIA] = -1;
            nodo[i][ESTADO] = PENDIENTE;
        }
        scanf("%d", &origen);
        activado = origen;
        nodo[origen][DISTANCIA] = 0;
        unsigned int min;
        while(activado){
            activado = 0;
            min = -1;
            for(i=1; i <= nodos; i++){
                if (nodo[i][ESTADO]==PENDIENTE &&
                    nodo[i][DISTANCIA]!=-1 &&
                    nodo[i][DISTANCIA]<min
                ){

                    min = nodo[i][DISTANCIA];
                    activado = i;
                }
            }

            for(i=1; i<=bordes; i++){
                if (borde[i][DESDE] == activado){
                    if (nodo[borde[i][TO]][DISTANCIA] > nodo[borde[i][DESDE]][DISTANCIA]+ESP ||
                        nodo[borde[i][TO]][DISTANCIA]==-1
                    ){
                        nodo[borde[i][TO]][DISTANCIA]=nodo[borde[i][DESDE]][DISTANCIA]+ESP;
                    }
                }

                if (borde[i][TO] == activado){
                    if(nodo[borde[i][DESDE]][DISTANCIA]>nodo[borde[i][TO]][DISTANCIA]+ESP ||
                        nodo[borde[i][DESDE]][DISTANCIA]==-1
                    ){
                        nodo[borde[i][DESDE]][DISTANCIA]=nodo[borde[i][TO]][DISTANCIA]+ESP;
                    }
                }
            }

            nodo[activado][ESTADO] = AGOTADO;
        }

        for(i=1; i<=nodos; i++){
            if(i!=origen)printf("%i ", nodo[i][DISTANCIA]);
        }
        printf("\n");
    }
    return 0;
}
```
