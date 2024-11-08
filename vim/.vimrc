"El siguiente archivo debe ir ubicado en $HOME/.vimrc"
"Seteos de Configuracion de vim para el Usuario
"
"Seteos para todo archivo
set cursorcolumn    "Visualiza columna del cursor
set cursorline      "Visualiza linea del cursor
set number          "Muestra Nro de linea del cursor
set relativenumber  "Muestra Nros de linea relativos al cursor 
set ts=3            "Establece 3 espacios por tab
"
"Seteos segun tipo de archivo
autocmd FileType yaml setlocal ai ts=2 sw=2 et
autocmd FileType sh setlocal ai ts=2 sw=2 et
autocmd FileType text setlocal ai ts=2 sw=2 et nocuc nocul nonu nornu
