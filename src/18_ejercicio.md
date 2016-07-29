# Búsqueda en anchura: alcance más corto

_**Temas**_: _grafos_

Dado un grafo no dirigido que consta de N nodos (etiquetados 1 a N) , donde un determinado nodo S dado representa la posición de inicio y un borde entre dos nodos es de longitud 6 unidades en el grafo.

Se requiere para el cálculo de la distancia más corta desde la posición de inicio ( nodo S ) para todos los otros nodos en el grafo.

- Si un nodo es inalcanzable, la distancia se asume como -1.
- La longitud de cada borde en el grafo es de 6 unidades.

## Restriciones
> 1 <= T <= 10

> 2 <= N <= 1000

> 1 <= M <= (N x (N-1))/2

> 1 <= x, y, S <= N

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

> 2

> 4 2

> 1 2

> 1 3

> 1

> 3 1

> 2 3

>2

### Salida 0

> 6 6 -1

> -1 6

---

## Solución

```C
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

#define FROM 0
#define TO 1
#define DISTANCE 0
#define STATUS 1
#define SPENT 0
#define PENDING 1
#define GAP 6

int main() {

	int cases, nodes, edges, active, i, origin;
	int node[1000+1][2];
	int edge[1000*(1000-1)/2+1][2];

	scanf("%d", &cases);

	while(cases--){
		scanf("%d%d", &nodes, &edges);
		for(i=1; i <= edges; i++){
			scanf("%d%d", &edge[i][FROM], &edge[i][TO]);
		}
		for(i=1; i <= nodes; i++){
			node[i][DISTANCE] = -1;
			node[i][STATUS] = PENDING;
		}
		scanf("%d", &origin);
        active = origin;
		node[origin][DISTANCE] = 0;
		unsigned int min;
		while(active){

			active = 0;
			min = -1;
			for(i=1; i <= nodes; i++){
				if(node[i][STATUS]==PENDING && node[i][DISTANCE]!=-1 && node[i][DISTANCE]<min){
					min = node[i][DISTANCE];
					active = i;
				}
			}

			for(i=1; i<=edges; i++){
				if(edge[i][FROM]==active){
					if(node[edge[i][TO]][DISTANCE]>node[edge[i][FROM]][DISTANCE]+GAP || node[edge[i][TO]][DISTANCE]==-1){
						node[edge[i][TO]][DISTANCE]=node[edge[i][FROM]][DISTANCE]+GAP;
					}
				}
				if(edge[i][TO]==active){
					if(node[edge[i][FROM]][DISTANCE]>node[edge[i][TO]][DISTANCE]+GAP || node[edge[i][FROM]][DISTANCE]==-1){
						node[edge[i][FROM]][DISTANCE]=node[edge[i][TO]][DISTANCE]+GAP;
					}
				}
			}
			node[active][STATUS] = SPENT;

		}
		for(i=1; i<=nodes; i++){
			if(i!=origin)printf("%i ", node[i][DISTANCE]);
		}
		printf("\n");
	}
    return 0;
}
```
