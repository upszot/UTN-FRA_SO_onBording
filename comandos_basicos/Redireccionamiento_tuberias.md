# Comandos Basicos


## Tuberias
> En sistemas operativos basados en Unix/Linux, las tuberías (pipes en inglés) </br>
> Son una característica fundamental que permite la comunicación entre procesos. </br>
> Una tubería conecta la salida estándar (STDOUT) de un proceso con la entrada estándar (STDIN) de otro proceso, </br>
> lo que permite que el resultado de un comando se utilice como entrada para otro.

- Ejemplo 
```sh
 echo "hola mundo" |wc
      1       2      11
```
> La salida del echo, la usamos como entrada para el comando wc </br>
> Informacion que devuelve wc </br>
> 1 Linea, 2 Palabras, 11 Caracteres (10 Caracteres Imprimibles + Retorno de carro)

## Redireccionamientos

- Redireccionamiento a la Derecha  >
```sh
# Guardo el historial de comandos en un archivo
history > mi_historial_de_comandos.txt

# Dejo el archivo en blanco (0bit)
> /var/log/messages
# Dejo el archivo en blanco (1Bit - Tiene el retorno de carro)
echo "" > casi_limpio.txt
```
> Redirecciona stdout hacía un archivo. </br>
> Lo crea si no existe. </br>
> Si existe lo sobreescribe 

- Doble Redireccionamiento a la Derecha  >>
```sh
sudo grep $(whoami) /etc/shadow | awk -F ':' '{print $2}'  >> Hash_Clave_mi_Usuario.txt
```
> Redirecciona stdout hacía un archivo en Modo Append  </br>
> Lo crea si no existe.


- Triple Redireccionamiento a la Izquierda  <<<  (HERE-STRING)
```sh
bc <<<5+2
```
> Se pasa una cadena que es interpretada por el comando al que se le redirecciona como un argumento.  </br>
> Este argumento puede ser una variable de shell que puede expandirse </br>
> bc -> (Un lenguaje de cálculo de precisión numerica arbitraria) 

- Doble Redireccionamiento a la Izquierda  <<  (HERE-DOCUMENT o HereDoc)
```sh
wc -l << EOF
> linea1
> linea2
> linea3
> EOF
3
```
>  funciona indicando un DELIMITADOR que no es más que una palabra o cadena cualquiera que cierra el bloque de texto que se desea redireccionar </br>

- La conjuncion de varios metodos
```sh
 cat << FIN > un_archivo.txt
> linea1
> linea2
> linea3
> FIN
[vagrant@vmpruebas tmp]$ tail un_archivo.txt
linea1
linea2
linea3
```

- Redireccionamiento simple a la Izquierda
```sh
wc -l  < /etc/passwd
```
> Se Redirigue el archivo  `/etc/passwd` como entrada estándar (stdin) para el comando  `wc -l`   </br>
> El comando contara la cantidad de lineas del archivo y lo retornara por salida estándar (stdout) 




### Aplicando lo aprendido
- Ejemplo  usando redireccionamiento y tuberias
```sh
 bc <<<$(cat /proc/cpuinfo |grep -i proce |tail -n1 | awk -F ':' '{print $2}')+1
8
```
> El comando bc, recibe el resultado de la ejecucion del comando encerrado en $() </br>
> cat /proc/cpuinfo  Muestra informacion de la CPU y se la pasa al grep  </br>
> el comando grep filtra el substring "proce" sin case-sensitive  y se lo pasa al tail  </br>
> El comando tail le pasa al comando awk la linea Nro 1 contando desde el final (ultima linea)  </br>
> awk setea como delimitador de columnas al : e imprime la columna 2  </br>
> por ultimo agrego el string +1 
   <details>
     <summary>&emsp; <Mostrar/Ocultar> - Ejecucion paso a paso</summary>
   <div>
   <table>
      <tr>
         <td><img src="../.img/Redireccionamiento_Tuberias.png" width="90%" align="center"></td>
      </tr>
   </table>
   </div>
   </details>



### Extras
[tutorial-Redireccionamiento](https://www.linuxtotal.com.mx/index.php?cont=redireccionamiento-en-linux)

[Video - Fork Bomb (PeladoNerd)](https://www.youtube.com/watch?v=N_BBuB9v2_I)
