# Separar mayúsculas y minúsculas

_**Tema**_: _bucles_

Se pide desarrollar un algoritmo que solicite una frase por pantalla que contenga tanto letras mayúsculas como minúsculas. Una vez aceptada la frase se ha de visualizar las letras mayúsculas y minúsculas por separado almacenando también las cadenas generadas en variables separadas, como ejemplo si se teclea HOla MunDO, la frase en minúsculas tendrá que contener las letras "laun" mientras que la variable que contiene las letras en mayúsculas ha de contener y visualizar "HOMDO".

## Entrada

> Se recibira la frase por pantalla **Frase:**.

## Salida

> Mensaje que indica la frase original, la cadena de mayúsculas y la de minúsculas por separado.
>
> Frase:
>
> Mayúsculas:
>
> Minúsculas:

---

## Ejemplos

### Entrada 0

> hoLAmUNDo

### Salida 0

> Frase: hoLAmUNDo
>
> Mayusculas: LAUND
>
> Minusculas: homo

### Entrada 1

> HOLA

### Salida 1

> Frase: HOLA
>
> Mayusculas: HOLA
>
> Minusculas:

## Solución

```C
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]){
    char Frase[80];
    char Mayusculas[80];
    char Minusculas[80];

    int ConFrase;
    int ConMayus;
    int ConMinus;

    printf("\nFrase:");
    scanf(" %[^\n]",Frase);

    ConMayus=0;
    ConMinus=0;
    ConFrase=0;
    while(Frase[ConFrase]!='\0') {

        if (Frase[ConFrase]>='A' && Frase[ConFrase]<='Z') ||
            Frase[ConFrase]=='Ñ') {

            Mayusculas[ConMayus++]=Frase[ConFrase];
            Mayusculas[ConMayus]='\0';
        }

        if ((Frase[ConFrase]>='a' && Frase[ConFrase]<='z') ||
            Frase[ConFrase]=='ñ') {

            Minusculas[ConMinus++]=Frase[ConFrase];
            Minusculas[ConMinus]='\0';
        }

        ConFrase++;
    }

    printf("\nFrase: %s",Frase);
    printf("\nMayusculas: %s",Mayusculas);
    printf("\nMinusculas: %s",Minusculas);
    printf("\n");
    return 0;
}
```
