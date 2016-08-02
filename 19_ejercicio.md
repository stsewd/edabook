# Criba de Eratóstenes

_**Temas**_: _arrays_, _matemáticas_, _números primos_

La criba de Eratóstenes es un algoritmo que permite hallar todos los números primos menores que un número natural **N**. Se forma de una tabla con todos los valores comprendidos entre **2** y **N**, y se van tachando los números que no son primos de la siguiente manera: Comenzando por el **2**, se tachan todos sus múltiplos. Se escoge el siguiente número que no esté tachado, y se tachan sus múltiplos. Así sucesivamente hasta que el cuadrado del número sea mayor que **N**.

## Entrada

> La primer línea contiene un entero menor a 500 **N**, que es el número límite.

## Salida

> Una lista de todos los números primos encontrados separados por un espacio.

---

## Ejemplos

### Entrada 0

> 25

### Salida 0

> 2 3 5 7 11 13 17 19 23

### Explicación

> Los números primos entre 1 y 25 son:
>
> 2, 3, 5, 7, 11, 13, 17, 19, 23.

### Entrada 1

> 113

### Salida 1

> 2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97 101 103 107 109 113.

---

## Solución

```C
#include <stdio.h>
#include <math.h>
#include <stdbool.h>

const int MAX = 500;

void inicializar_array(bool primos[]);
void encontrar_primos(bool primos[], int numero_limite);
void tachar_multiplos(bool primos[], int numero_limite, int num);
void mostrar_primos(bool primos[], int numero_limite);

int main() {
    bool primos[MAX];
    int numero_limite;
    printf("Ingrese el numero limite: ");  scanf("%d", &numero_limite);
    inicializar_array(primos);
    encontrar_primos(primos, numero_limite);
    mostrar_primos(primos, numero_limite);
    return 0;
}

void inicializar_array(bool primos[]){
    for (int i = 0; i < MAX; i++){
        primos[i] = true;
    }
}

void encontrar_primos(bool primos[], int numero_limite){
    for(int i = 2; i*i <= numero_limite; i++){
        if (primos[i]){
            tachar_multiplos(primos, numero_limite, i);
        }
    }
}

void tachar_multiplos(bool primos[], int numero_limite, int num){
    for(int i = num*2; i <= numero_limite; i += num){
        primos[i] = false;
    }
}

void mostrar_primos(bool primos[], int numero_limite){
    for (int i = 2; i <= numero_limite; i++){
        if(primos[i]){
            printf("%d ", i);
        }
    }
    printf("\n");
}

```
