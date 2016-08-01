# Complejidad computacional

_**Temas**_: _complejidad computacional_, _análisis de algoritmos_, _notación O-grande_

Calcular la complejidad computacional con la notación O-grande de los siguientes algoritmos.

## Algoritmos

### A

```C
int n;
int suma = 0;
printf("n: ");
scanf("%d", &n);

for (int i = n; i > 0; i /= 2) {
    for (int j = 0; j < i; j++) {
        suma++;
    }
}

```

### Solución A

`O(ln(n))`

---

### B

```C
int n;
int suma = 0;
printf("n: ");
scanf("%d", &n);

for (int i = 1; i < n; i *= 2) {
    for (int j = 0; j < i; j++) {
        suma++;
    }
}

```

### Solución B

`O(ln(n))`

---

### C

```C
int k = 0;
int s = 0;
while (k < n) {
    s += d[k];
    if (k == 0)
        k = 2;
    else
        k *= 2;
}

```

### Solución C

`O(ln(n))`

---

### D

```C
int n;
int suma = 0;
printf("n: ");
scanf("%d", &n);

for (int i = 0; i < n; i++) {
    for (int j = i + 1; j < n; j++) {
        for (int k = j + 1; k < n; k++) {
            suma++;
        }
    }
}

```

### Solución D

`O(n^3)`
