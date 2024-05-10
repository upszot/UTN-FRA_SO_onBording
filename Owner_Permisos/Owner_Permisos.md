# Owner y Permisos


## Propietarios de los archivos.

En Linux, cada archivo y directorio tiene un propietario y un grupo asociados. 

### Cambiar el Propietario y el Grupo con `chown`

El comando `chown` permite cambiar estos atributos. La sintaxis básica es:

- Para cambiar solo el propietario, simplemente especifica el nombre del usuario:
- Para cambiar tanto el propietario como el grupo, usa el formato `propietario:grupo`:
- Para cambiar solo el grupo, puedes usar `chown` con dos puntos al inicio o usar el comando `chgrp`:
- Cambiar el propietario y el grupo de todos los archivos y subdirectorios recursivamente: `chown -R` 


## Permisos en GNU/Linux
En Linux, cada archivo y directorio tiene un conjunto de permisos que determinan quién puede hacer qué con esos recursos. 
Estos permisos se dividen en tres partes: para el propietario (usuario), el grupo y otros usuarios (otros). 
Pero además del permiso en sí, el primer carácter de un listado de permisos indica el tipo de archivo o permisos especiales.


Usando el comando `ls -l`, verás algo como esto:

<div>
<table>
   <tr>
      <td><img src="../.img/permisos/ls.jpg" width="90%" align="center"></td>
   </tr>
</table>
</div>

### Tipos de Archivos y Permisos Especiales

El primer carácter indica el tipo de archivo:

- **d**: Directorio.
- **-**: Archivo regular.
- **l**: Enlace simbólico (soft link).
- **c**: Archivo de dispositivo de carácter.
- **b**: Archivo de dispositivo de bloque.
- **p**: Tubería (pipe).
- **s**: Socket.
<div>
<table>
   <tr>
      <td><img src="../.img/permisos/Tipos_Archivos.png" width="99%" align="center"></td>
   </tr>
</table>
</div>

### Permisos Estándares

Los permisos estándar se dividen en tres grupos: propietario, grupo y otros, cada uno con tres permisos posibles:

- **r** para lectura (read).
- **w** para escritura (write).
- **x** para ejecución (execute).

Los permisos se representan de forma simbólica como un conjunto de 10 caracteres. Los primeros 9 caracteres indican los permisos para el propietario, el grupo y otros. 

<div>
<table>
   <tr>
      <td><img src="../.img/permisos/Permisos_01.png" width="40%" align="center"></td>
   </tr>
</table>
</div>

En el ejemplo de la imagen de arriba:
- **rwx** (propietario): Puede leer, escribir y ejecutar.
- **r-x** (grupo): Puede leer y ejecutar.
- **r--** (otros): Solo pueden leer.


### Cambiar Permisos

Para cambiar los permisos de un archivo o directorio, se utiliza el comando `chmod`. Puedes usar tanto la notación simbólica como la octal para indicar qué permisos modificar:

- **Notación simbólica**: Usa letras para definir qué permisos cambiar. Ejemplo: `chmod u+x archivo` agrega el permiso de ejecución para el propietario.
- **Notación octal**: Utiliza valores numéricos para representar permisos. Ejemplo: `chmod 755 archivo` permite al propietario leer, escribir y ejecutar, y al grupo y a otros solo leer y ejecutar.


#### Nosotros nos centraremos en la Notacion Octal, que es la mas utilizada.
> Cada dígito octal puede representar un conjunto de permisos. </br>
> El sistema octal es adecuado para esto porque cada permiso (lectura, escritura, ejecución) se puede representar como un bit en una secuencia binaria.</br>
> En el contexto de permisos de archivos, cada dígito octal representa un conjunto de tres bits, que se corresponden con los permisos de lectura, escritura y ejecución, en ese orden.</br>

Para entender cómo se traduce el sistema binario a la notación octal para permisos de Linux, Veamos los siguientes cuadros:
<div>
<table>
   <tr>
      <td><img src="../.img/permisos/permisos_Binario_octal.PNG" width="90%" align="center"></td>
      <td><img src="../.img/permisos/permisos-octales.jpg" width="90%" align="center"></td>
   </tr>
</table>
</div>

La notación octal para permisos de archivos en Linux generalmente consta de tres dígitos, uno para el propietario (usuario), otro para el grupo y otro para otros usuarios:

El primer dígito representa los permisos para el propietario.
El segundo dígito representa los permisos para el grupo.
El tercer dígito representa los permisos para otros usuarios.
<div>
<table>
   <tr>
      <td><img src="../.img/permisos/permisos-linux.jpg" width="90%" align="center"></td>
   </tr>
</table>
</div>

De esta forma como vemos en la imagen. para lograr dichos permisos en un archivo deberemos ejecutar el comando `chmod 755 archivo`  
Tambien lo pueden aplicar en forma recursiva con la opcion -R `chmod -R 755 directorio/`  

### Permisos Especiales (Material Extra)

Además de los permisos básicos, Linux tiene permisos especiales que pueden aparecer en lugar del carácter de ejecución (`x`):

- **s**: SUID/SGID (Set User/Group ID). Cuando un archivo tiene el permiso SUID, se ejecutará con los privilegios del propietario. Si es SGID, se ejecutará con los privilegios del grupo. Para directorios, SGID implica que los archivos creados dentro heredan el grupo del directorio.
- **t**: Sticky bit. Si un directorio tiene este permiso, solo el propietario del archivo puede eliminar o modificar archivos en ese directorio, incluso si otros tienen permisos de escritura.

