# Cifrado de vigenere

_**Temas**_: _aritmetica modular_, _strings_, _arrays_.

El cifrado de vigenere está basado en el cifrado césar, a diferencia de éste que sólo usa un número como clave, el cifrado de vigenere usa una palabra como clave. Su funcionamiento es el siguiente:

Se numera el alfabeto del 1 al 26. A cada letra se asigna su correspondiente número. Se tiene un mensaje **S** y una palabra clave **K**, se sitúa la clave debajo del mensaje a cifrar, si el mensaje es más largo que la clave, esta se repite hasta el fin del texto. Se desplazan los caracteres de **S** por el valor numérico correspondiente al carácter de **K** que está debajo del caracter de **S**.

## Entrada

> La primer línea contiene un string **S**, que es la cadena a cifrar y cuya longitud no pasa de los 100 caracteres y sólo contiene letras minúsculas del abecedario inglés. La segunda línea es un string que representa la clave **K**, cuya longitud no pasa de los 50 caracteres (sólo letras minúsculas del abecedario inglés).

## Salida

> Mostrar la cadena cifrada.

---

## Ejemplos

### Entrada 0

> holamundo
> uno

### Salida 0

> ccavajird

### Explicación

> Si colocamos la clave “uno” debajo del mensaje a cifrar, tenemos:

> Si reemplazamos cada carácter de la clave por su valor numérico, se tiene:

> Si desplazamos cada carácter del texto a cifrar el número dado en la tabla anterior, es decir, a “h“ la desplazamos 22 posiciones (volviendo a empezar desde la “a” en caso de sobrepasar la “z“), dando “c” como resultado. Realizamos este procedimiento con el resto de letras, al final se tiene que el mensaje cifrado es “ccavajird”.

### Entrada 1

> ghdjakzzzxsdpweowsdasfdsaasdflpspw
> lilixxz

### Salida 1

> sqpsyizlijbbnwqxibbysrmejyqdrubbnu

### Entrada 2

> qwertyuiopasdfghjklmnbvcxz
> qqaazz

### Salida 2

> hnfstylzpqasuwhijkcdocvcoq

---

## Solución

```C
#include <stdio.h>
#include <string.h>

const int MAX_MSJ = 101;
const int MAX_CLAVE = 51;

int main() {
    char mensaje[MAX_MSJ];
    char clave[MAX_CLAVE];
    char mensaje_cifrado[MAX_MSJ];
    int longitud_cadena;
    int longitud_clave;

    printf("Ingrese la cadena: "); gets(mensaje);
    printf("Ingrese la clave: "); gets(clave);

    longitud_cadena = strlen(mensaje);
    longitud_clave = strlen(clave);

    int j = 0;
    int i = 0;
    for(i = 0; i < longitud_cadena; i++) {
        mensaje_cifrado[i] = (mensaje[i] + clave[j] - 193)%26 + 97;
        j++;
        if(j >= longitud_clave) {
            j = 0;
        }
    }
    mensaje_cifrado[i] = '\0';
    printf("Mensaje cifrado: %s\n", mensaje_cifrado);
    return 0;
}

```
