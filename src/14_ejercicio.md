# Cifrado numérico

_**Tema**_: _strings_


Se pide desarrollar un algoritmo que solicite una frase por pantalla y una clave en minúsculas y sin espacios. Una vez aceptada la frase y la clave se ha de visualizar un menú con la siguientes opciones:

1. cifrado
2. descifrado
3. salir


1. Cifrado:
    1. Recibir un mensaje (Texto en Claro, validado solo para minúsculas y sin espacios).
        sms = “david”

2. Recibir una clave (K).
    K = “hola”
    (En caso que la clave sea más pequeña que el mensaje se rellenará los espacios nuevamente con la clave, hasta que quede empatados cada letra del mensaje con su respectiva letra de la clave).

3. Se contaran los espacios que hay de la letra del mensaje a la letra de su clave correspondiente (espacios).

    - En el ejemplo se cuenta cuantos espacios hay de la letra “d” para llegar a la letra “h”, que es  espacios= 4.
    - Si espacios<10, entonces se rellenará con un “0”. De manera que cada letra del mensaje sea representado por 2 dígitos. En este caso espacios = “04”.
    - Mismo procedimiento para “a” a la “o”
    - Para la letra “v” a la “l” será --> Espacios = 16
    - Para la “i” a la “a” del mensaje será --> Espacios = 18
    - Se continúa con el mismo procedimiento hasta finalizar de procesar el mensaje.

4. Se mostrara por pantalla el mensaje cifrado:  “Mensaje cifrado: 0414161804”

2. Descifrado:
    1.	Se recibirá un mensaje cifrado = “0414161804”
    2.	Se recibirá la clave k de descifrado = “hola”.
    3.	Se mostrará por pantalla el texto en claro “david”.


## Entrada

> Cifrado:
>
> > mensaje
>
> > clave


> Descifrado:
>
> > mensaje
>
> > clave

## Salida

> Cifrado:
>
> > mensaje cifrado


> Descifrado:
>
> > texto claro

---

## Ejemplos

### Entrada 0
> Cifrado:
>
> > mensaje: david
>
> > clave: hola


### Salida 0

> Cifrado:
>
> > mensajeCifrado: 0414161804

### Entrada 1
> Descifrado:
>
> > mensaje: 0414161804
>
> > clave: hola


### Salida 1

> Descifrado:
>
>> textoClaro: david

## Solución

```C
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 27

int menu(){
    printf("\n..................\n");
    printf("1)cifrado\n");
    printf("2)descifrado\n");
    printf("3)salir\n");
    printf("..................\n");
    int op=0;
    scanf("%d",&op);
    return op;
}

void cifrar(char mensaje [MAX], char clave [MAX]){
    //codigo ascii 97=a;  122=z
    int tamanioMensaje = strlen(mensaje);
    int tamanioClave = strlen(clave);

    int indiceMensaje=0;
    int indiceClave=0;

    int asciiIndiceMensaje;
    int asciiIndiceClave;

    char mensajeCifrado[MAX*2];
    char resultadoStr[3];

    mensajeCifrado[0]='\0';  //no es lo mismo "\0" que '\0'
    for(indiceMensaje=0;indiceMensaje<tamanioMensaje;indiceMensaje++){

        indiceClave = indiceMensaje%tamanioClave;

        asciiIndiceMensaje = mensaje[indiceMensaje];
        asciiIndiceClave = clave[indiceClave];

        int resultado = asciiIndiceClave-asciiIndiceMensaje;
        if(resultado<0){
            resultado = resultado + 26;  //26 = tamanio abecedario
        }
        itoa(resultado,resultadoStr,10);
        if(resultado<10){
            resultadoStr[0]='0';
            itoa(resultado,&resultadoStr[1],10);
            resultadoStr[2]='\0';
        }
        //concatear cadena mensaje cifrado
        strcat(mensajeCifrado,resultadoStr);
    }
    printf("\nmensajeCifrado: %s\n",mensajeCifrado);
}

void descifrar(char mensajeCifrado [MAX*2], char clave [MAX]){
    //codigo ascii 97=a;  122=z
    int tamanioMensajeCifrado = strlen(mensajeCifrado);
    int tamanioTextoClaro = tamanioMensajeCifrado/2;
    int tamanioClave = strlen(clave);

    int indiceMensajeCifrado=0;
    int indiceClave=0;
    int asciiIndiceClave;

    char textoClaro[MAX];
    textoClaro[0]='\0';  //no es lo mismo "\0" que '\0'

    char letra[3];
    char letraResultante;
    int i = 0;
    for(indiceMensajeCifrado=0;indiceMensajeCifrado<tamanioMensajeCifrado;indiceMensajeCifrado+=2){

        indiceClave = (indiceMensajeCifrado+(tamanioClave-i)) % tamanioClave;
        i++;

        char a = mensajeCifrado[indiceMensajeCifrado];
        char b = mensajeCifrado[indiceMensajeCifrado+1];
        letra[0]=a;
        letra[1]=b;
        letra[2]='\0';

        //convertir char a int
        int letraInt = atoi(letra);
        asciiIndiceClave = clave[indiceClave];
        int resultado = (asciiIndiceClave - letraInt);
        if(resultado<97){
            resultado = resultado + 26;
        }
        letraResultante = resultado;
        strncat(textoClaro,&letraResultante,1);
    }
    printf("\ntextoClaro: %s\n",textoClaro);
}


int main()
{
    int op=0;
    char mensaje [MAX];
    char clave [MAX];
    while(op!=3){
        op=menu();
        switch(op){
        case 1:
            printf("mensaje: ");
            scanf("%s",mensaje);
            printf("clave: ");
            scanf("%s",clave);
            cifrar(mensaje,clave);
            break;
        case 2:
            printf("mensaje: ");
            scanf("%s",mensaje);
            printf("clave: ");
            scanf("%s",clave);
            descifrar(mensaje,clave);
            break;
        case 3:
            printf("\nfin del programa\n");
            break;
        default:
            printf("\nopcion incorrecta\n");
            break;
        }
    }
    return 0;
}

```
