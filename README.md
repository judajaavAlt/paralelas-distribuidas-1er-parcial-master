# Especificaciones
1 socket
6 cores per socket
2 threads per core


# Tiempos
## Secuencial

24.829s
23.943s
24.050s
23.708s
23.539s

avg = 23.9003s


## Paralelo 12 hilos

22.261s
22.841s
24.537s
22.267s
23.655s

avg = 22.920
speedup vs secuencial = 1.31
eficiencia = 0.1092

## 24 hilos

24.506s
22.762s
22.769s
22.199s
22.414s

avg = 22.648
speed up vs 12 hilos = 1.012
eficiencia = 0.0422

# Conclusion

Podemos ver que pese a que aumentar la cantidad de hilos utilizados
genera un aumento en nuestra velocidad, no lo vale considerando la
perdida de eficiencia en el uso de los recursos del sistema

