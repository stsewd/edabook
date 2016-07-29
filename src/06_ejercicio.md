# Matriz caracol

_**Temas**_: _bucles_, _matrices_

Se pide crear una matriz caracol, que consiste en ingresar el el número de filas y el número de columnas, y el programa se encargara de llenar automaticamente la matriz, se llenara de izquierda a derecha, despues de arriba hacia abajo, luego de derecha a izquierda y finalmente de abajo hacia arriba.

## Entrada

> La primer línea contiene **n**, el número de filas. La segunda línea contiene **m**, el número de columnas.

## Salida

> La matriz caracol de tamaño **n x m**

---

## Ejemplos

### Entrada 0

> 3
>
> 4

### Salida 0

|  1||  2||  3||  4|
| 10|| 11|| 12||  5|
|  9||  8||  7||  6|

### Entrada 1

> 5
> 
> 5

### Salida 1

|  1||  2||  3||  4||  5|
| 16|| 17|| 18|| 19||  6|
| 15|| 24|| 25|| 20||  7|
| 14|| 23|| 22|| 21||  8|
| 13|| 12|| 11|| 10||  9|

## Solución

```C
#include <stdio.h>

#include <stdio.h>
#include <stdlib.h>

int n = 0,m = 0;
void generarMatriz(int n);

int main(){
    printf("Inserte las filas de la matriz: ");
    scanf("%d",&n);
    printf("Inserte las columnas matriz: ");
    scanf("%d",&m);
    generarMatriz(n);
    return 0;
}


void generarMatriz(n){
    int i = 0,j = 0, k = n,l = m, num_act = 0;
    int tamanioTotal = n*m,cont = 0;
    int matrizCaracol[n][m];

 	for(j = 0; j<m ; j++ ){

 		num_act +=  1;
 		matrizCaracol[0][j] = num_act;

	 }
	 j -= 1;


    while(num_act<tamanioTotal){

    	k -= 1;
    	cont = 0;
    	while((k > cont) && (l>0)){

    		num_act +=  1;
    		i += 1;
    		matrizCaracol[i][j] = num_act;
    		cont += 1;

		}

		l -= 1;
		cont = 0;
		while((l > cont) && (k>0)){

    		num_act +=  1;
    		j -= 1;
    		matrizCaracol[i][j] = num_act;
    		cont += 1;

		}

		k -= 1;
		cont = 0;
		while((k > cont) && (l>0)){

    		num_act +=  1;
    		i -= 1;
    		matrizCaracol[i][j] = num_act;
    		cont += 1;

		}

		l -= 1;		
		cont = 0;
		while((l > cont) && (k>0)){

    		num_act +=  1;
    		j += 1;
    		matrizCaracol[i][j] = num_act;
    		cont += 1;

		}


    }

    for(i = 0; i<n ; i++ ){

 		for(j = 0; j<m ; j++ ){

 			if(matrizCaracol[i][j] < 10){

 				printf("|  %d|",matrizCaracol[i][j]);

			}
			else if (matrizCaracol[i][j] < 100){


				printf("| %d|",matrizCaracol[i][j]);

			}else{

				printf("|%d|",matrizCaracol[i][j]);

			}


 		}
 		printf("\n");

	 }

}

```
