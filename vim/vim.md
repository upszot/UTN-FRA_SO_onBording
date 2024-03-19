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
- `gg`, `G`, `:5`, `^`, `$`: Moverse por el documento.

## Búsqueda:
- `/texto`: Buscar texto hacia adelante.
- `#`: Buscar la palabra bajo el cursor.
- `n`, `N`: Moverse entre ocurrencias de búsqueda.

## Modos de inserción:
- `i`, `I`, `A`: Modos de inserción.

## Edición:
- `x`, `X`, `dd`, `d2d`, `dw`, `D`, `d$`, `d^`, `dG`: Borrar.
- `yy`, `y4y`, `yw`: Copiar.
- `r`, `R`: Reemplazar.
- `u`, `.`: Deshacer, repetir.

## Comandos sed:
- `:s/foo/bar/g`: Reemplazar en la línea actual.
- `:%s/hola/chau/g`: Reemplazar en todo el archivo.
- `:5,12s/foo/bar/g`: Reemplazar en un rango de líneas.

## Ejecución de comandos:
- `:!comando`: Ejecutar comandos sin salir de Vim.
- `:split`, `:vsplit`, `[crtl+wq]`, `[crtl+w flechita]`: División de ventanas.
- `:diffthis`: Comparar archivos.

## Modo visual:
- `v`: Cambiar al modo visual.

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
