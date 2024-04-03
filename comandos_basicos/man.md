# Comandos Basicos

## man  (interfaz de los manuales de referencia del sistema)

- Ejemplos de  distintas secciones de man
```sh
# Seccion 1   Programas ejecutables u órdenes de la shell 
man man
man passwd

# Seccion 2   Llamadas al sistema (funciones proporcionadas por el núcleo)
man open

# Seccion 3   Llamadas a biblioteca (funciones dentro de bibliotecas de programa)
man stdio
man shadow

# Seccion 4   Archivos especiales (normalmente se encuentran en /dev)
man tty
man null

# Seccion 5   Formatos de archivo y convenios, p.e.  /etc/passwd
man 5 passwd
man 5 shadow

# Seccion 6   Juegos
man 6 fortune

# Seccion 7   Miscelánea (incluidos paquetes de macros y convenios), p.e. man(7), groff(7), man-pages(7)
man ascii

# Seccion 8   Órdenes de administración del sistema (normalmente solo para root)
man sudo

# Seccion 9   Rutinas del núcleo [No estándar]
man kmalloc
# https://manpages.debian.org/jessie/linux-manual-3.16/kmalloc.9.en.html
```
- Una opcion de buscar un comando sin conocerlo
```sh
# Por ejemplo si queremos buscar todos los comandos relacionados con la red
man -k network
apropos network

# Tambien podemos aprovechar las tuberias para ir aplicando filtros a la busqueda.
apropos "network devices" |grep ip
```
> Si no trae nada pruebe de actualizar la mandb con el comando "mandb" tambien puede ejecutar "updatedb" para actualizar las locate



