# Recursividad

_**Temas**_: Recursividad, Matrices

Se debe realizar un programa recursivo que pida el numero de la matriz que será cuadrada y un numero que sera la basa para los elementos de la matriz que sera llenada recursivamente.
![](img\recursivo.png)

## Entrada

> Número de la matriz y número de la base.

## Salida

> La matriz resultante.

---

## Ejemplos

### Entrada 0

> 4
> 2

### Salida 0

> 1 1 1 1
> 1 2 2 2
> 1 2 4 4
> 1 2 4 8

### Explicación

> La matriz es cuadra cada fila y columna se llenara de forma resursiva, los elementos serán la base ingresada al exponente segun el numero de la fila y columna (exponente=fila=culumna), se ira llenando dependiendo de la fila y de la columna, la fila uno y columna uno tendrá la base elevada el exponente 0, la fila 1 y columna 1 omitiendo el primer elemente de la fila y columna 1 tendrá la base elevada al numero 1 y asi hasta llegar a la fila y columna n, teninedo en cuenta que se debe omitir llenar los elemetnos de las filas y columnas ya antes llenadas.

### Entrada 1

> 5
> 3

### Salida 1

> 1  1  1  1  1
> 1  3  3  3  3
> 1  3  9  9  9
> 1  3  9  27 27
> 1  3  9  27 81

---

## Solución

```C
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#define tamanio 50


int matriz[tamanio][tamanio];
int recorrido(int,int,int,int,int,int);
int llenado(int,int,int,int,int,int);
void imprime(int);


int main(){
  	int nmatriz,base;
    int exponente=1, numero=0,fila=0,columna=0;
    printf(" Ingrese numero de la matriz: ");
	scanf("%d",&nmatriz);
    printf("\n Ingrese numero de base: ");
	scanf("%d",&base);
    recorrido(numero,exponente,nmatriz,base,fila,columna);
    imprime(nmatriz);
	return 0;
}
int recorrido(int numero, int exponente,int nmatriz, int base,int fila, int columna){

    if(numero==nmatriz){
        return 1;
    }
    else{
        llenado(numero,exponente,nmatriz,base,fila,columna);

    }
}
int llenado(int numero, int exponente, int nmatriz, int base,int fila,int columna){

    if(columna==nmatriz){
        numero+=1;
        fila+=1;
        columna=fila;
        exponente=exponente*base;
        return recorrido(numero,exponente,nmatriz,base,fila,columna);
    }
    else{

        matriz[fila][columna]=exponente;
        matriz[columna][fila]=exponente;
        columna+=1;
        return llenado(numero,exponente,nmatriz,base,fila,columna);
    }

}
void imprime(int nmatriz){
    int i,j;
    for(i=0;i<nmatriz;i++){
        for(j=0;j<nmatriz;j++){
            printf("%5d",matriz[i][j]);
        }
        printf("\n\n");
    }

}
```
