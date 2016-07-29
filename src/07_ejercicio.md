# Verificar Grafo Dirigido

_**Temas**_: _grafos_

Ingresar el número de nodos de la matriz, luego crear una matriz de adyacencia recibiendo los pesos de la matriz, y finalmente verificar si el grafo es dirigido o no.

## Entrada

> La primer línea contiene **n**, el número de nodos. Las siguientes líneas contienen los pesos de la matriz adyacente.

## Salida

> Texto mostranto si la matriz es o no dirigida.

---

## Ejemplos

### Entrada 0

> 2

Pesos de la Matriz de Adyacencia

> 1
> 2
> 1
> 2

### Salida 0

> El grafo es dirigido.

### Explicación

> Un grafo no es dirigido cuando la matriz de adyacencia es simetrica, en este caso la matriz no es simetrica, por ende no es dirigida.

### Entrada 1

> 3
> 1
> 2
> 3
> 2
> 2
> 2
> 3
> 2
> 1

### Salida 1

> El grafo no es dirigido.

---

## Solución

```C
#include <stdlib.h>
#include <stdio.h>

int numero_nodos=0;
int matriz_adyacencia[5][5];

void ver_dirgido(){

    int i,j,cont=0;
    for(i=0;i<numero_nodos;i++){
        for(j=0;j<numero_nodos;j++){
            if(matriz_adyacencia[i][j]!=0){
                if(matriz_adyacencia[i][j]!=matriz_adyacencia[j][i]){
                    printf("\nEl grafo es dirigido.\n");
                    return;
                }
            }
        }
    }
    printf("\nEl grafo no es dirigido.\n");

}

void leer_pesos(){

    int i,j;
    for(i=0;i<numero_nodos;i++){
        for(j=0;j<numero_nodos;j++){
            printf("\nIngrese el peso entre %d->%d: ",i+1,j+1);
            scanf("%d",&matriz_adyacencia[i][j]);
        }
    }

}
void mostrar_matriz_pesos(){

    int i,j;
    printf("\nMatriz de Adyacencia\n\n");
    for(i=0;i<numero_nodos;i++){
        for(j=0;j<numero_nodos;j++){
            printf("|%3d|",matriz_adyacencia[i][j]);
        }
        printf("\n");
    }

}


int main(){

    printf("Ingrese el numero de nodos:");
    scanf("%d",&numero_nodos);
    while(numero_nodos<1 || numero_nodos>4){
        printf("\nIngrese numero de nodos <5 y >1:\n");
        scanf("%d",&numero_nodos);
    }
    leer_pesos();
    mostrar_matriz_pesos();
    ver_dirgido();
    system("pause");
    return 0;

}

```
