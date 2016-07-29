# Mensajes cifrados

_**Temas**_: _bucles_, _string_, _arrays_

Batman está bajo la pista de Enigma, quien ha dejado mensajes cifrados por toda ciudad Gótica. Pronto Batman descubre que los mensajes pueden ser descifrados de la siguiente manera:

Se tiene un texto **T**, donde **L** es la longitud de **T**. Se ingresa cada carácter en un array bidimensional, tal que sus filas y columnas cumplan con lo siguiente:

El mensaje descifrado es obtenido mostrando los caracteres de cada columna del array, seguido por un espacio, y así hasta la última columna. Ayuda a Batman a averiguar qué es lo que trama Enigma.

## Entrada

> La primer línea contiene la cadena de texto cifrada, la cual consta de sólo letras del abecedario inglés sin espacios. La longitud del texto es menor a 90.

## Salida

> Mostrar el mensaje descifrado.
>
> Nota: Para las funciones entero mayor y entero menor se pueden usar las funciones ceil() y floor() disponibles en la librería <math.h>

---

## Ejemplos

### Entrada 0

> dtneieatpcpmooiaedlar

### Salida 0

> depar tame ntod epol icia

### Explicación

> La longitud del mensaje es de 21 caracteres, por lo tanto el número el número de filas y columnas del array es de 5 y 5 respectivamente.

### Entrada 1

> htnddtoateaislrcdcpcaigaieluo

### Salida 1

> hospi talce ntral deciu dadgo tica

---

## Solución

```C
#include <stdio.h>
#include <math.h>
#include <string.h>

int main() {
    char mensaje_cifrado[90];
    int long_texto;
    int num_columnas;
    int i;

    printf("Mensaje cifrado: ");  scanf("%s", mensaje_cifrado);

    long_texto = strlen(mensaje_cifrado);
    num_columnas = ceil(pow(long_texto, 0.5));

    printf("Texto descifrado:\n");
    for (int columna = 0; columna < num_columnas; columna++) {
        i = columna;
        while (i < long_texto) {
            printf("%c", mensaje_cifrado[i]);
            i += num_columnas;
        }
        printf(" ");
    }
    printf("\n");

    return 0;
}

```
