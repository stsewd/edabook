# Lectura de Archivos

_**Temas**_: _archivos_, _chars_

Leer un archivo .txt y contabilizar el número de cada vocal que contiene el archivo sin importar si son mayúsculas o minúsculas. El usuario debera elegir el archivo a contabilizar las vocales. Se debe pedir por teclado el nombre del archivo o la dirección donde se encuentre este.

## Entrada

> Ingresar el nombre del archivo.

## Salida

> Una vocal por linea junto con el número de ocurrencias.

---

## Ejemplos

### Entrada 0

> Ingrese el nombre del archivo: archivo.txt

### Salida 0

> a=2
>
> e=0
>
> i=5
>
> o=1
> 
> u=1


### Explicación

> Se obtiene la salida del número de vocales que hay en cada archivo que desea conocer el usuario, se debe contabilizar tanto vocales mayúsculas como minúsculas. La salida es el resultado de número de vocales encontradas en el archivo.

---

## Solución

```C
# include <stdio.h>
# include <stdlib.h>

int a=0,e=0,i=0,o=0,u=0;

int existe(char nombre[200]){
	FILE* archivo;
	archivo=fopen(nombre,"r");
	if(archivo==NULL){
		printf("\nEl archivo no existe");
		fclose(archivo);
		return 0;
	}
	else{
		fclose(archivo);
		return 1;
	}
}

void contarVocales(char nombre[200] ){
	FILE* archivo;
	archivo=fopen(nombre,"r");
	char letra;
	while(!feof(archivo))
	{
	  letra=fgetc(archivo);
	  letra=tolower(letra);
	  switch(letra){
	  	case 'a':
	  		a+=1;
	  		break;
	  	case 'e':
	  		e+=1;
	  		break;
	  	case 'i':
	  		i+=1;
	  		break;
	  	case 'o':
	  		o+=1;
	  		break;
	  	case 'u':
	  		u+=1;
	  		break;
	  	default:
	  		break;		
	  }  
	}
}

int main(){
	char numero[100], archivo[200]="";
	int comprobar;
	printf("\nIngrese el nombre o direccion donde se encuentra el archivo con la extension '.txt': \n");
	gets(archivo);
	comprobar= existe(archivo);
	if(comprobar==1){
		contarVocales(archivo);
		printf("Archivo Contiene: \na=%d\ne=%d\ni=%d\no=%d\nu=%d",a,e,i,o,u);
	}
}
```
