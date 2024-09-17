# Algunos Atajos de vim

> ## Descripción de Vim
>
> Vim es un editor de texto altamente configurable y potente, diseñado para facilitar la edición eficiente de archivos de texto.
>
> Se distingue por su interfaz de línea de comandos y su capacidad para manipular texto de manera rápida y precisa.
>
> Vim ofrece una amplia gama de características, incluyendo modos de inserción y comando, capacidades de búsqueda y reemplazo, atajos de teclado personalizables, y soporte para la programación con resaltado de sintaxis y complementos.
>
> Su diseño modular y su amplia comunidad de usuarios y desarrolladores lo convierten en una herramienta versátil y altamente personalizable para editores de texto de todos los niveles de experiencia.


## Desde la consola:
- `vim`: Abre Vim.
- `vim NombreArchivo`: Crea o abre un archivo en Vim.
- `vim -x NombreArchivo`: Encripta un archivo en Vim.
- `vim -n NombreArchivo`: Abre un archivo en Vim ignorando el archivo .swp (Archivo temporal de recuperacion).

## Dentro de Vim:
- `[Esc]`: Modo Comando.
- `:open NombreArchivo`: Crea o abre un archivo en Vim.
- `:w`: Guarda el archivo.
- `:w un_archivo`: Guarda el archivo con un nombre específico.
- `:q`: Sale de Vim.
- `:q!`: Fuerza la salida sin guardar cambios.
- `:wq` o `:x`: Guarda y sale.

## Ayuda dentro de Vim:
- `:help`: Muestra la ayuda general.
- `:help comando`: Muestra la ayuda para un comando específico.

## Movimiento:
- `gg`: Mover el cursor al inicio del documento.
- `G`: Mover el cursor al final del documento.
- `:5`: Mover el cursor a la línea 5 del documento.
- `^`: Mover el cursor al inicio de la línea actual.
- `$`: Mover el cursor al final de la línea actual.

## Búsqueda:
- `/texto`: Buscar texto hacia adelante.
- `#`: Buscar la palabra bajo el cursor.
- `n`: Moverse a la siguiente ocurrencia de la búsqueda.
- `N`: Moverse a la ocurrencia anterior de la búsqueda.

## Modos de inserción:
- `i`: Modo de inserción -> inserta texto donde está el cursor.
- `I`: Modo de inserción -> inserta texto al principio de la línea.
- `A`: Modo de inserción -> inserta texto al final de la línea.

## Edición de Texto:
- `x`: Borra el carácter bajo el cursor.
- `X`: Borra el carácter antes del cursor.
- `dd`: Borra la línea completa.
- `d2d`: Borra dos líneas.
- `dw`: Borra una palabra.
- `D`: Borra desde el cursor hasta el final de la línea.
- `d$`: Borra desde el cursor hasta el final de la línea.
- `d^`: Borra desde el cursor hasta el principio de la línea.
- `dG`: Borra desde el cursor hasta el final del documento.

## Copia y Reemplazo:
- `yy`: Copia la línea actual.
- `y4y`: Copia cuatro líneas a partir de la línea actual.
- `yw`: Copia una palabra.
- `r`: Reemplaza un carácter.
- `R`: Reemplaza múltiples caracteres (sobreescribe el texto).

## Deshacer y Repetir:
- `u`: Deshace la última acción.
- `.`: Repite la última acción.

## Indentación:
- `>3>`: Indenta 3 líneas desde la línea actual.
- `<3<`: Desindenta 3 líneas desde la línea actual.

## Comandos sed:
- `:s/foo/bar/g`: Reemplazar todas las ocurrencias de "foo" por "bar" en la línea actual.
- `:%s/hola/chau/g`: Reemplazar todas las ocurrencias de "hola" por "chau" en todo el archivo.
- `:5,12s/foo/bar/g`: Reemplazar todas las ocurrencias de "foo" por "bar" en el rango de líneas de la 5 a la 12.

## Ejecución de comandos:
- `:!comando`: Ejecutar un comando del sistema sin salir de Vim.
- `:r!comando`: Ejecutar un comando del sistema e insertar la salida (STDOUT) dentro del archivo en la posición del cursor.

## División de ventanas:
- `:split`: Dividir la ventana horizontalmente.
- `:vsplit`: Dividir la ventana verticalmente.
- `[Ctrl+wq]`: Cerrar la ventana actual.
- `[Ctrl+w flechita]`: Moverse entre las ventanas abiertas.

## Comparación de archivos:
- `:diffthis`: Comparar el archivo actual con otro archivo en Vim.

## Edición de un archivo con Vim mediante SSH:
- `vim scp://usuario@host:puerto/ruta/al/archivo`: Editar un archivo en un servidor remoto a través de SSH usando Vim. Por ejemplo:
  - `vim scp://vagrant@192.168.56.2//tmp/un_archivo`: Editar el archivo `/tmp/un_archivo` en un servidor remoto con IP `192.168.56.2`.


## Modo visual:
- `v`: Cambiar al modo visual para seleccionar texto carácter por carácter.
- `V`: Cambiar al modo visual de línea para seleccionar líneas completas.
- `Ctrl+v`: Cambiar al modo visual en bloque para seleccionar un bloque de texto rectangular.
- `o`: Mover el cursor al otro extremo de la selección en modo visual.
- `y`: Copiar el texto seleccionado al portapapeles en modo visual.
- `d`: Eliminar el texto seleccionado en modo visual.
- `>`: Indentar el texto seleccionado en modo visual.
- `<`: Desindentar el texto seleccionado en modo visual.
- `:normal`: Ejecutar comandos normales sobre la selección en modo visual.

## Seteos:
```sh
cat << EOF > $HOME/.vimrc
"Seteos de Configuracion de vim para el Usuario

"Seteos para todo archivo
set cursorcolumn    "Visualiza columna del cursor
set cursorline      "Visualiza linea del cursor
set number          "Muestra Nro de linea del cursor
set relativenumber  "Muestra Nros de linea relativos al cursor 
set ts=3            "Establece 3 espacios por tab

"Seteos segun tipo de archivo
autocmd FileType yaml setlocal ai ts=2 sw=2 et
autocmd FileType sh setlocal ai ts=2 sw=2 et
autocmd FileType text setlocal ai ts=2 sw=2 et nocuc nocul nonu nornu
EOF
