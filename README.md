# UTN-FRA_SO_onBording
## Catedra de Arquitectura de Sistemas Operativos - UTN


### Algunos Repositorios que usaremos durante la cursada

- [Vagrant](https://github.com/upszot/UTN-FRA_SO_Vagrant.git)
- [Bash](https://github.com/upszot/UTN-FRA_SO_Bash.git)
- [Ansible](https://github.com/upszot/UTN-FRA_SO_Ansible.git)
- [pc-workstation](https://github.com/upszot/pc-workstation.git)
- [Docker](https://github.com/upszot/UTN-FRA_SO_Docker.git)
- [Examenes](https://github.com/upszot/UTN-FRA_SO_Examenes.git)
- [Gua de Ejercicios](https://github.com/upszot/UTN-FRA_SO_Guia_Ejercicios.git)


## Preparación del entorno del estudiante: 

   ### Programas que se requieren instalar.
   Indispensables:
   - [ ] git 
   - [ ] VirtualBox  
   - [ ] Vagrant   
  
   Opcionales:
   - [ ] Chocolatey
   - [ ] WSL   
   - [ ] MobaXterm
   - [ ] Putty
   - [ ] WinSCP
   - [ ] Docker Desktop
   - [ ] Visual Studio Code / SublimeText

> El estudiante debera tener instalados en su pc los siguientes programas </br>
> La misma se podra realizar de forma tradicional o utilizando chocolatey
   - Instalación vía Chocolatey / PowerShell de:
     - [WSL](https://learn.microsoft.com/es-es/windows/wsl/install)
     - [Chocolatey](https://docs.chocolatey.org/en-us/choco/setup#more-install-options)
       - git
       - VirtualBox
       - virtualbox-guest-additions-guest
       - Vagrant
       - sublimetext4
       - docker-desktop
       - MobaXterm
       - PuTTY
       - PuTTYgen
       - WinSCP
   ```sh
   choco install -y git sublimetext4 virtualbox virtualbox-guest-additions-guest.install vagrant mobaxterm putty.portable winscp   --log-file=c:\chocolatey_install.log
   ```
   ### Tener Descargadas (Para optimizar tiempos)
   - ISO de instalacion [Descargar_ISO_Fedora-Mate](https://fedoraproject.org/es/spins/mate/download)
   - Disco Rigido Virtual(VDI) con Ubuntu instalado [Descargar-VDI](https://sourceforge.net/projects/osboxes/files/v/vb/55-U-u/24.04/64bit.7z/download)
   > Configura el entorno del estudiante con las herramientas necesarias para el curso.


## Informacion General de la Materia:

### Distribuciones de GNU/Linux utilizadas.
> En principio el alumno podra utilizar cualquier distribucion de GNU/Linux que desee. </br>
> Nosotros en la cursada vamos a hacer referencia a 2 de las [distros mas usadas](https://distrowatch.com/). </br>
 > Tambien podra elegir el [Entorno de Escritorio](https://es.wikipedia.org/wiki/Entornos_de_Escritorio_en_Linux) que desee ([KDE](https://es.wikipedia.org/wiki/KDE), [GNOME](https://es.wikipedia.org/wiki/GNOME), [Cinnamon](https://es.wikipedia.org/wiki/Cinnamon), [MATE](https://es.wikipedia.org/wiki/MATE) , [Xfce](https://es.wikipedia.org/wiki/Xfce), [Deepin](https://es.wikipedia.org/wiki/Deepin) 

- Nosotros Recomendamos Instalar (Por simplicidad y bajos requerimentos de recursos las siguientes)
  - [Ubuntu](https://ubuntu.com/download/desktop) Recomendamos instalar ultima version de Larga Duracion de Soporte (LTS)
  - [Fedora](https://fedoraproject.org/es/spins/) Recomendamos Instalar Fedora Mate-Compiz
- Levantaremos VM de forma automatizada mediante Vagrant.
- Utilizaremos discos rigidos virtuales con los SO pre-instalados que los pueden bajar de [OSBoxes.org](https://www.osboxes.org/virtualbox-images/)
- Probaremos multiples distribuciones sin necesidad de instalacion mediante un browser en [Distrosea](https://distrosea.com/)
- Correr contenedores de docker desde [play-with-docker](https://labs.play-with-docker.com/) sin necesidad de instalarlo.
- Conocer [kubernetes](https://labs.play-with-k8s.com/) o [Openshift](https://developers.redhat.com/developer-sandbox/activities/learn-kubernetes-using-red-hat-developer-sandbox-openshift) sin necesidad de instalarlo.


### Algunos Temas que aprenderemos durante la cursada.

   ### Indice de temas:
   - [Informacion teorica centralizada](./Teoria/Teoria_Centralizado.md)
   - [Virtualizacion - Maquinas Virtuales:](README.md#virtualizacion)
   - [Estructura de un Sistema Operativo:](README.md#estructura-de-un-sistema-operativo)
   - [Configuracion del equipo y Aprendiendo a Moverse sobre la terminal:](README.md#configuracion-del-equipo-y-aprendiendo-a-moverse-sobre-la-terminal)
   - [Archivos de configuracion, Comandos y Redireccionamiento, tuberias](./README.md#archivos-de-configuracion-comandos-y-redireccionamiento-tuberias)
   - [ABM Usuarios / Grupos, Owner y Permisos](./README.md#abm-usuarios--grupos-owner-y-permisos)
   - [Gestión de procesos:](README.md#gestión-de-procesos)
   - [Automatizacion Basico: - Bash Scripting](README.md#automatizacion-basico) 
   - [Almacenamiento: - Particionaniento/Formateo/Montaje](README.md#almacenamiento)
   
   - [Manejo de repositorios y Gestion de Paquetes](README.md#manejo-de-repositorios-y-gestion-de-paquetes)
   - [Almacenamiento Avanzado: (LVM)](README.md#almacenamiento-avanzado)
   - [Memoria de Intercambio: (swap)](README.md#memoria-de-intercambio)
   - [Gestion de Servicios ](README.md#gestion-de-servicios)
   - [Protocolo Comunicacion (SSH)](README.md#protocolo-comunicacion)
   - [Automatizacion Avanzado: (Ansible)](README.md#automatizacion-avanzado)
   - [Virtualizacion de Aplicaciones (Docker) y Herramientas de Redes](README.md#virtualizacion-aplicaciones-y-redes)
   - [Gestion de Repositorios y Control de Codigo: (GIT)](README.md#gestion-de-repositorios-y-control-de-codigo)


   ### Virtualizacion:

   - [ ] **Verificar si el Host permite y esta Habilitada la Virtualizacion:**
      - Verificacion desde Windows
         - [windows 10](https://learn.microsoft.com/es-es/virtualization/hyper-v-on-windows/reference/hyper-v-requirements) 
         - [windows 11](https://support.microsoft.com/es-es/windows/habilitar-la-virtualizaci%C3%B3n-en-equipos-windows-11-c5578302-6e43-4b4b-a449-8ced115f58e1)
      - Verificacion desde Linux
      ```sh
      grep flags  /proc/cpuinfo  |tail -n1  |grep -iE 'smv|vmx'
      ```
      - Verificacion desde la BIOS 
        - [Intel](https://www.intel.la/content/www/xl/es/support/articles/000005486/processors.html)
        - [Multiples marcas](https://hardzone.es/2018/12/06/virtualizacion-cpu-como-activarla-ventajas/)
      > Verificar y Configura la PC para virtualizar equipos.

      - Para los que tienen Mac (M1 o M2)
        - [Multipass](https://reviblog.net/2021/11/13/como-virtualizar-de-manera-gratuita-ubuntu-linux-en-los-mac-con-chip-m1/)

      > Configura la PC (Mac con Microprocesadores M1 o M2) para virtualizar equipos.

   - [ ] **Generación de VM dentro de VirtualBox:**
      - Creacion VM Manualmente VirtualBox [PDF](vm/Creacion-de-la-maquina-virtual.pdf)
      - Creación e instalación de Linux de forma tradicional. [Video](https://www.youtube.com/watch?v=lp5DnhwWt-M)
      - [Instlar VirtualBox-Guest-additions dentro de la VM](https://www.linuxtechi.com/install-virtualbox-guest-additions-on-ubuntu/)
      - Uso de una imagen de disco descargada de [OSBoxes.org](https://www.osboxes.org/virtualbox-images/).
      - Generación de VM mediante [Vagrant](https://github.com/upszot/UTN-FRA_SO_Vagrant.git).
      > Crea y gestiona máquinas virtuales para propósitos de aprendizaje.

   - [ ] **Conexión a las VM:**
      - Terminal de VirtualBox.
      - [SSH](ssh/ssh.md) dentro de PowerShell o gitbash.
      - `vagrant ssh`.
      - Conexión por SSH vía PuTTY o MobaXterm.
      - WinSCP.
      > Conecta y gestiona el acceso a las máquinas virtuales desde diferentes entornos.

   ### Estructura de un Sistema Operativo:
   - [ ] **Jerarquía de Estructura de Directorio Linux:**
      <details>
        <summary>&emsp; <Mostrar/Ocultar> - Estructura de directorios Linux</summary>
      <div>
      <table>
         <tr>
            <td><img src="jerarquia/jerarquia_01.png" width="90%" align="center"></td>
         </tr>
      </table>
      </div>
      </details>
      > Explora la estructura de directorios en sistemas Linux.

   ### Configuracion del equipo y Aprendiendo a Moverse sobre la terminal:
   - [ ]**Comandos Configuraciones Basicas**
      - `hostnamectl set-hostname pc-pepe`: Cambiar el Nombre de la pc.
      - `localectl set-keymap us`: Cambiar configuracion del teclado a Ingles
      - `localectl set-keymap latam`: Cambiar configuracion del teclado a Español latino
      > Algunos comandos extras para configurar el equipo. </br>
      > (Requiere re-logeo para ver los cambios)

   - [ ] **Resolviendo Roturas....**
      - [Video - Recuperando root en cualquier GNU/Linux](https://www.youtube.com/watch?v=CEWeNrnDvBE)
      - [Video - Recuperar un GNU/Linux con grub o grub_rescue](https://www.youtube.com/watch?v=kmxzUmkjOlo)

   - [ ] **Atajos para Moverse Dentro de la Terminal:**
      - `Ctrl + E`: Moverse al final de la línea.
      - `Ctrl + A`: Moverse al principio de la línea.
      - `Ctrl + →` y `Ctrl + ←`: Saltar de palabra en palabra hacia adelante y hacia atrás, respectivamente.
      - `Ctrl + W`: Eliminar la palabra anterior.
      - `Ctrl + U`: Eliminar desde la posición actual hasta el principio de la línea.
      - `Ctrl + K`: Eliminar desde la posición actual hasta el final de la línea.
      - `Ctrl + T`: Intercambiar las dos letras antes del cursor.
      - `Alt + T`: Intercambiar las dos palabras antes del cursor.
      - `Ctrl + Y`: Pegar texto previamente eliminado.
      - `[Esc] + .`: Escribe de forma reversiva el ultimo argumento del ultimo comando ejecutado
      > Agiliza tus movimientos dentro de la terminal utilizando estos atajos para navegar y editar comandos con eficiencia.

   - [ ] **Tuneando tu Terminal:**
      - [ ] **Tunenado el History:**
         - `echo "HISTSIZE=-1" >> ~/.bashrc`: Configurar el historial para guardar comandos indefinidamente.
         - `echo "export HISTCONTROL=\$HISTCONTROL:ignoreboth" >> ~/.bashrc`: Configurar el historial para ignorar comandos duplicados y espacios en blanco consecutivos.
         - `echo "history -a" >> ~/.bashrc`: Automatizar la sincronización del historial al ejecutar un comando.
         > Mejora la gestión y persistencia del historial para un trabajo más eficiente.

      - [ ] **Agregando Alias:**
         - `mkdir -p ~/aliases.d && echo "export PATH=\$PATH:~/aliases.d" >> ~/.bashrc`: Crear la carpeta `aliases.d` y agregarla al `PATH`.
         - `echo "alias saludo='cowsay Hola \$(whoami)'" >> ~/aliases.d/saludo`: Crear un alias "saludo" que muestra un saludo personalizado usando COWSAY.
         - `echo "alias history-top='history | awk '{CMD[\$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl | head -n10'" >> ~/aliases.d/history-top`: Crear un alias "history-top" que muestra los 10 comandos más utilizados.
         > Organiza tus alias en una carpeta dedicada y mejora la legibilidad y mantenimiento de tu entorno.

   ### Archivos de configuracion, Comandos y Redireccionamiento, tuberias.

   - [ ] **Algunos archivos de configuración que veremos:**
      - Configuración del Sistema:
        - `/etc/passwd`: Archivo que almacena información de cuentas de usuario.
        - `/etc/shadow`: Archivo que almacena las contraseñas encriptadas de los usuarios.
        - `/etc/hosts`: Archivo que mapea direcciones IP a nombres de host.
        - `/etc/sudoers`: Archivo que especifica qué usuarios tienen permiso para ejecutar comandos como superusuario.
        - `/etc/ssh/sshd_config`: Archivo de configuración del servidor SSH.
      - Configuración del Usuario:
        - `$HOME/.ssh/config`: Configuración personalizada para conexiones SSH.
        - `$HOME/.bashrc`: Archivo de configuración de inicio de la shell Bash.
        - `$HOME/.bash_history`: Historial de comandos ejecutados en la shell Bash.
      - Información del Sistema (archivos virtuales en `/proc`):
        - `/proc/cpuinfo`: Información detallada sobre el procesador.
        - `/proc/meminfo`: Información sobre la memoria disponible y usada en el sistema.
        - `/proc/swaps`: Información sobre las particiones de swap y su uso.
      - Logs del Sistema:
        - `/var/log/messages`: Registro de mensajes del sistema.
        - `/var/log/dmesg`: Registro de mensajes del arranque y mensajes del kernel.
      > Explora archivos de configuración y archivos de usuario comunes en sistemas Linux.

   - [ ] **Comandos Básicos - Aprender a moverse por la terminal:**
      - [Documentación y Ayuda](comandos_basicos/man.md):
        - `man`: Mostrar el manual del comando.
        - `apropos`: Buscar comandos por palabra clave.
        - `whatis`: Mostrar una breve descripción de un comando.
      - Información del Usuario:
        - `whoami`: Mostrar nombre de usuario.
        - `id`: Mostrar información de usuario y grupo.
      - Navegación:
        - `pwd`: Mostrar ruta del directorio actual.
        - `ls`: Listar contenido del directorio.
        - `cd`: Cambiar directorio.
        - `tree`: Mostrar estructura de directorios en forma de árbol.
      - Manipulación de Archivos y Directorios:
        - `mkdir`: Crear directorios.
        - `rm`: Eliminar archivos o directorios.
        - `touch`: Crear archivos vacíos o actualizar marcas de tiempo.
        - `cp`: Copiar archivos o directorios.
        - `mv`: Mover o renombrar archivos o directorios.
      - Información del Sistema y Sesiones:
        - `w`: Mostrar información sobre los usuarios y sus actividades.
        - `last`: Mostrar historial de inicio de sesión.
      > Desarrolla habilidades fundamentales para la navegación y manipulación de archivos en la terminal, y aprende a acceder a información detallada con `man` y `apropos`.

   - [ ] **[Búsqueda de Archivos:](./comandos_basicos/man.md#buscar-informacion-sobre-un-comando-especifico)**
      - Búsqueda y Localización de Archivos:
        - `whereis`: Mostrar ubicaciones de archivos binarios, fuentes y páginas de manuales.
        - `locate`: Buscar archivos o directorios en la base de datos del sistema.
        - `updatedb`: Actualizar la base de datos de `locate`.
        - `find`: Buscar archivos y directorios en función de varios criterios.
      > Aprende a Buscar archivos en sistemas Debian y RedHat.

   - [ ] **Atajos para Búsqueda en el Historial:**
      - `history`: Mostrar el historial completo de comandos.
      - `Ctrl + R`: Realizar una búsqueda inversa en el historial de comandos.
      - `!número`: Ejecutar el comando con el número específico en el historial.
      - `!!`: Ejecutar el último comando.
      - `sudo !!`: Ejecutar el último comando con privilegios de superusuario.
      > Facilita la búsqueda de comandos anteriores en la historia de la terminal y agiliza la ejecución con estos atajos específicos.

   - [ ] **Procesamiento de Texto:**
      - `cat`: Concatena archivos y muestra su contenido.
      - `grep`: Busca patrones en archivos o flujos de texto.
      - `tail`: Muestra las últimas líneas de un archivo.
      - `head`: Muestra las primeras líneas de un archivo.
      - `sort`: Ordena líneas de texto.
      - `uniq`: Filtra o elimina líneas duplicadas consecutivas.
      - `tee`: Lee del `stdin` y escribe en la `stdout` y en archivos simultáneamente.
      > Aprende a manipular y filtrar texto de manera eficiente.

   - [ ] **[Redireccionamiento y Tuberías:](comandos_basicos/Redireccionamiento_tuberias.md)**
      - `>`: Redirige la salida estándar (stdout) a un archivo, sobrescribiéndolo.
      - `>>`: Redirige la salida estándar (stdout) a un archivo, añadiéndola al final.
      - `<<<`: Redirige una cadena de texto como entrada estándar (stdin).
      - `<< DELIMITADOR > archivo`: Redirige múltiples líneas de texto como entrada estándar (stdin) hasta encontrar el delimitador.
      - `<`: Redirige un archivo como entrada estándar (stdin).
      - `stdout`: Salida estándar, por defecto el terminal.
      - `stdin`: Entrada estándar, por defecto el teclado.
      - `stderr`: Salida de error estándar, por defecto el terminal.
      > Comprende y utiliza redireccionamientos y tuberías en la terminal.

   - [ ] **Uso básico de VIM:**
      - [Que es?, Atajos de vim y Algunas cosas locas que se pueden hacer...](vim/vim.md) 
      - Archivo de configuracion que puedes usar [$HOME/.vimrc](vim/.vimrc)
      - [cheat sheet](vim/cheat_sheet_Imprimible.pdf)
      - [cheat sheet Tutorial](vim/vim_cheat_sheet_tutorial.pdf)
      - [Video 11' Atajos vim del @PeladoNerd](https://www.youtube.com/watch?v=TmNa4y-K5Z8)   
      Extras:
         - [nvim (neoVim - GUI de Desarrollo Moderna y LIVIANA, basada en VIM... competencia de vscode)](https://neovim.io/)
         - [Video: Instalando y configurando Nvim (WSL)](https://www.youtube.com/watch?v=xBU2nuMCMRQ)
      > Introducción al editor de texto VIM para la edición de archivos en la terminal.

   - [ ] **Algunos Comandos Avanzados:**
      - `awk`: Un potente lenguaje de programación para procesamiento de texto y generación de informes. [Manual](comandos_avanzados/awk.pdf)
      - `xargs`: Construye y ejecuta comandos, convirtiendo la salida de otros comandos en argumentos de entrada.
      - `su`: Abreviatura de "Switch User", este comando se utiliza para cambiar de usuario en un sistema Unix o Linux. 
      - `sudo`: Abreviatura de "Superuser Do", este comando permite a los usuarios ejecutar comandos con los privilegios de otro usuario.
      - `visudo`: Utilizado para editar el archivo de configuración `/etc/sudoers`, que controla los privilegios de sudo. [Tutorial](https://www.digitalocean.com/community/tutorials/how-to-edit-the-sudoers-file-es)
      > Explora comandos avanzados para el procesamiento de texto y la administración del sistema.

   ### ABM Usuarios / Grupos, Owner y Permisos
   - [ ] **[Creación de Usuarios y Grupos:](./user_group/user_group.md)**
      - `useradd`, `groupadd`, `usermod`, `id`.
      - Archivos de configuración relacionados:
        - `/etc/passwd`: Contiene información de cuentas de usuario.
        - `/etc/shadow`: Almacena contraseñas cifradas.
        - `/etc/group`: Información de grupos de usuarios.
      > Gestiona usuarios y grupos en el sistema y explora los archivos de configuración asociados para entender su funcionamiento.

   - [ ] **[Owner y Permisos:](./Owner_Permisos/Owner_Permisos.md)**
      - `chown`: Cambia el propietario de archivos y directorios.
      - `chmod`: Cambia los permisos de archivos y directorios.
      > Gestiona los permisos y la propiedad de archivos y directorios en el sistema.


   ### Gestión de procesos:

   - [ ] **Comandos de visualización de procesos:**
      - `ps`: Muestra información sobre los procesos en ejecución en el sistema.
      - `top`: Proporciona una lista dinámica de los procesos en ejecución y sus recursos consumidos.
      - `htop`: Una versión mejorada de `top`, que permite una visualización más amigable y ofrece interactividad para gestionar procesos.
      - `jobs`: Muestra una lista de los trabajos en segundo plano y sus estados.

   - [ ] **Comandos de gestión de procesos:**
      - `kill`: Envía una señal a un proceso para terminarlo; se puede usar con el ID del proceso (PID) o el nombre del proceso.
      - `fg`: Trae un proceso en segundo plano al primer plano.
      - `bg`: Envía un proceso al segundo plano para que continúe ejecutándose.
      - `Ctrl + Z`: Suspende un proceso en primer plano, colocándolo en segundo plano.
      - Procesos en segundo nivel.
      > Monitorea y gestiona procesos en el sistema.


   ### Automatizacion Basico:
   - [ ] **[Bash Scripting:](https://github.com/upszot/UTN-FRA_SO_Bash)**
      - `if`: Utilizado en scripts Bash para realizar una acción si se cumple una condición.
      - `for`: Estructura de bucle utilizada para iterar sobre una lista de elementos en scripts Bash.
      - `while`: Estructura de bucle utilizada para repetir una acción mientras se cumple una condición en scripts Bash.
      - `case`: Estructura de control de flujo utilizada para comparar una variable con múltiples valores en scripts Bash.
      - Variables: Permiten almacenar y manipular datos en scripts Bash.
      > Automatiza tareas mediante scripts Bash.

   ### Almacenamiento:
   - [ ] **[Tipos de Almacenamiento](./Almacenamiento/Tipos_Almacenamiento.md)**
   - [ ] **Tablas de Particiones, [MBR](./.img/Particionamiento/Tabla_Particiones_MBR.png) vs [GPT](./.img/Particionamiento/Tabla_Particiones_GPT.png)**
   - [ ] **[FileSystem](./Teoria/FileSistem.md)**
   - [ ] **[Particionamiento, Formateo y Montado:](Particionamiento_standar/Particionamiento_standar.md)**
      - `dmesg`: Muestra el buffer de mensajes del kernel, útil para diagnosticar problemas durante el arranque del sistema.
      - `fdisk`: Una herramienta para manipular la tabla de particiones en sistemas Unix y Linux.
      - `mkfs.ext4`: Crea un sistema de archivos ext4 en una partición específica.
      - `df`: Muestra el espacio utilizado y disponible en los sistemas de archivos montados.
      - `lsblk`: Lista información sobre los dispositivos de bloque, incluidas sus particiones.
      - `/etc/fstab`: Archivo de configuración que contiene información sobre los sistemas de archivos y opciones de montaje.
      - `mount`: Monta un sistema de archivos en una ubicación específica del árbol de directorios.
      - `umount`: Desmonta un sistema de archivos previamente montado.
      > Trabaja con particiones, formateo y montado de sistemas de archivos.

   ### Manejo de repositorios y Gestion de Paquetes
   - [ ] **[Manejo de Repositorios](./Repositorios_Paquetes/Manejo_de_Repositorios.md)**
      - Listar Repositorios configurados en la pc
      - Agregar Repositorios.
      - Habilitar / Deshabilitar Repositorios
      - Instalar Clave Publica de un Repositorio
      - Encontrar los mirrors de repositorios con menor latencia
      > Aprende a gestionar repositorios.

   - [ ] **[Gestion de Paquetes](./Repositorios_Paquetes/Gestion_de_Paquetes.md)**
      - [Equivalencias_apt_vs_dnf](https://docs.fedoraproject.org/es/quick-docs/dnf-vs-apt/)**
      - Gestores de paquetes (Debian y derivados vs RedHat y derivados)
      - Buscar un paquete
      - Instalar un paquete
      - Actualizar un paquete
      - Bloquear un paquete para su NO actualizacion
      - remover un paquete
      - Conocer los paquetes que tengo instalados
      - generar una lista de todos los paquetes instalados y usarla para instalarlos en otro equipo.
      - Instalar Grupos de paquetes (distintos Entornos de Escritorios)
      - Conocer en que paquete se encuentra un comando.
      - otros....
      > Aprende a gestionar paquetes, actualizar listas, buscar, instalar y configurar repositorios.

   ### Almacenamiento Avanzado:
   - [ ] **[LVM - Logical Volume Management:](LVM/lvm.md)**
      - `pvcreate`: Crea un nuevo volumen físico para su uso en LVM.
      - `vgcreate`: Crea un nuevo grupo de volúmenes (Volume Group) en LVM.
      - `lvcreate`: Crea un nuevo volumen lógico (Logical Volume) en LVM.
      - `vgextend`: Extiende un grupo de volúmenes existente en LVM.
      - `lvextend`: Extiende un volumen lógico existente en LVM.
      - `resize2fs`: Ajusta el tamaño del sistema de archivos ext2, ext3 o ext4 para que coincida con el tamaño del volumen lógico que lo contiene.
      - `lvremove`: Elimina un volumen lógico en LVM.
      - `vgremove`: Elimina un grupo de volúmenes en LVM.
      - `pcremove`: Elimina una etiqueta de un volumen físico en LVM.
      - **[Machete de LVM](LVM/Machete_LVM.md)**
      > Gestiona volúmenes lógicos para una administración de almacenamiento más flexible.

   ### Memoria de Intercambio:
   - [ ] **Memoria Swap:**
      - `free`: Muestra la cantidad de memoria RAM libre y utilizada en el sistema, así como la memoria swap.
      - `mkswap`: Prepara una partición o archivo para ser utilizado como memoria swap.
      - `swapon`: Activa un área de intercambio, permitiendo que el sistema la utilice como memoria virtual adicional.
      - `swapoff`: Desactiva una área de intercambio, liberando la memoria utilizada como swap.
      > Configura y gestiona la memoria swap del sistema.

   ### Gestion de Servicios 
   - [ ] **Manejo de Servicios con Systemctl:**
      - `systemctl start <service>`: Inicia un servicio específico.
      - `systemctl stop <service>`: Detiene un servicio específico.
      - `systemctl restart <service>`: Reinicia un servicio específico.
      - `systemctl status <service>`: Muestra el estado de un servicio específico.
      - `systemctl enable <service>`: Habilita un servicio para que se inicie automáticamente al arrancar el sistema.
      - `systemctl disable <service>`: Deshabilita un servicio para que no se inicie automáticamente al arrancar el sistema.
      - `systemctl list-units --type=service`: Lista todos los servicios disponibles en el sistema.
      > Controla y gestiona servicios del sistema utilizando Systemctl.

   ### Protocolo Comunicacion
   - [ ] **Protocolo SSH:**
      - `ssh`: Se utiliza para iniciar una sesión segura en un servidor remoto. 
      - `ssh-keygen`: Permite generar pares de claves pública y privada para autenticación SSH.
      - `ssh-copyid`: Copia la clave pública al servidor remoto, facilitando la autenticación sin contraseña.
      - [video_Aprendiendo_ssh_Parte1](https://www.youtube.com/watch?v=RMS5zBYQIqA)
      > Configura y utiliza el protocolo SSH de forma segura.

   ### Automatizacion Avanzado:
   - [ ] **[Aprovisionamiento y Configuración mediante Ansible:](https://github.com/upszot/UTN-FRA_SO_Ansible)**
      - Playbooks: Archivos YAML que definen las tareas a realizar en los sistemas remotos.
      - Roles: Conjuntos de tareas y configuraciones agrupadas de manera lógica y reutilizable en Ansible.
      - `ansible-playbook`: Comando para ejecutar playbooks de Ansible.
      - `ansible-galaxy`: Herramienta para gestionar roles de Ansible de la comunidad.
      - Inventarios: Archivos que especifican los hosts gestionados por Ansible.
      - Módulos: Funciones individuales que Ansible ejecuta en los hosts gestionados para realizar tareas específicas.
      > Automatiza la configuración y aprovisionamiento de sistemas mediante Ansible.

   ### Virtualizacion (Aplicaciones) y Redes

   - [ ] **[Docker:](https://github.com/upszot/UTN-FRA_SO_Docker)**
      - **Conceptos Básicos:**
        - **Contenedor:** Una instancia ejecutable de un entorno de software que incluye todo lo necesario para ejecutar una aplicación.
        - **Imagen:** Un paquete de software ligero y portátil que contiene todo lo necesario para ejecutar una aplicación, incluidas las dependencias, el código, las bibliotecas y las configuraciones.
        - **Dockerfile:** Un archivo de texto que contiene todas las instrucciones para crear una imagen Docker.
        - **Volumen:** Un mecanismo para persistir datos generados y utilizados por contenedores.
        - **Redes Docker:** Permite la comunicación entre contenedores, donde puedes definir cómo se conectan y se comunican.
      - **Comandos Principales:**
        - `docker run <imagen>`: Comando para ejecutar un contenedor a partir de una imagen.
        - `docker build -t <nombre-imagen> <ruta>`: Comando para construir una nueva imagen a partir de un Dockerfile.
        - `docker pull <imagen>`: Comando para descargar una imagen de un registro de Docker.
        - `docker push <imagen>`: Comando para subir una imagen a un registro de Docker.
        - `docker ps`: Muestra los contenedores en ejecución.
        - `docker images`: Lista las imágenes disponibles en el sistema.
        - `docker exec -it <nombre-contenedor> <comando>`: Ejecuta un comando dentro de un contenedor en ejecución.
        - `docker rm <nombre-contenedor>`: Elimina uno o más contenedores.
        - `docker rmi <nombre-imagen>`: Elimina una o más imágenes.
      - **Comandos Adicionales:**
        - `docker network ls`: Lista las redes creadas en Docker.
        - `docker volume ls`: Lista los volúmenes creados en Docker.
        - `docker run -d <imagen>`: Ejecuta un contenedor en segundo plano (modo "detached").
        - `docker logs <nombre-contenedor>`: Muestra los logs de un contenedor en ejecución.
        - `docker inspect <nombre-contenedor>`: Proporciona detalles sobre un contenedor, incluyendo su configuración y estado.
        - `docker top <nombre-contenedor>`: Muestra los procesos que se están ejecutando dentro de un contenedor.
      - **Comandos de Limpieza:**
        - `docker system prune`: Elimina todos los contenedores detenidos, redes no utilizadas, imágenes huérfanas y volúmenes no utilizados para liberar espacio.
      - **Uso de Docker Compose:**
        - **Docker Compose:** Herramienta para definir y ejecutar aplicaciones Docker multi-contenedor utilizando un archivo YAML.
        - **Comandos Comunes:**
          - `docker compose up`: Inicia todos los contenedores definidos en el archivo `docker-compose.yml`.
          - `docker compose down`: Detiene y elimina todos los contenedores, redes y volúmenes creados por `up`.
          - `docker compose logs`: Muestra los logs de todos los contenedores.
          - `docker compose exec <servicio> <comando>`: Ejecuta un comando en un contenedor de un servicio en ejecución.
          - `docker compose build`: Construye o reconstruye servicios definidos en el archivo `docker-compose.yml`.
      - **Prácticas Recomendadas:**
        - **Mantener imágenes pequeñas:** Utiliza imágenes base ligeras y limpia los archivos temporales durante la construcción.
        - **Versionar imágenes:** Etiqueta tus imágenes con números de versión para un mejor control.

      > Introducción a la virtualización de contenedores con Docker.

   - [ ] **Herramienta de Redes:**
      - `curl`: Herramienta de línea de comandos para transferir datos con sintaxis URL.
      - `wget`: Herramienta de línea de comandos para descargar archivos desde servidores web.
      - `nmap`: Utilidad para el descubrimiento de dispositivos en una red y el mapeo de puertos.
      - `nc`: Herramienta para leer y escribir datos a través de conexiones de red.
      - `telnet`: Cliente de telnet para establecer conexiones de terminal con hosts remotos.
      - `ip`: Herramienta para mostrar o manipular la información de la red y las rutas de la IP.
      - `ifconfig`: Utilidad obsoleta para configurar interfaces de red en sistemas Unix y Linux.
      > Explora herramientas de red para diagnóstico y configuración.

   - [ ] **Protocolo HTTP:**
      - `curl -X GET <URL>`: Realiza una solicitud HTTP GET para obtener datos de un servidor.
      - `curl -X POST <URL> -d "<datos>"`: Envía una solicitud HTTP POST con datos al servidor.
      - `curl -I <URL>`: Realiza una solicitud HEAD para obtener solo los encabezados de la respuesta.
      - `curl -X DELETE <URL>`: Envía una solicitud DELETE para eliminar un recurso en el servidor.
      - `curl -H "Authorization: Bearer <token>" <URL>`: Realiza una solicitud con un encabezado de autorización.
      - `curl -s -o <archivo> <URL>`: Descarga un recurso y guarda la salida en un archivo.
      > Trabaja con el protocolo HTTP para realizar solicitudes y enviar datos.


   - [ ] **Kubernetes (Deseable):**      
      - **Administración de Recursos:**
        - `kubectl get nodes`: Muestra todos los nodos en el clúster.
        - `kubectl get services`: Lista todos los servicios en el clúster.
        - `kubectl get pods`: Muestra todos los pods en el clúster.
        - `kubectl get all`: Muestra todos los recursos en el clúster (pods, servicios, despliegues, etc.).      
      - **Creación y Configuración:**
        - `kubectl create deployment <nombre-deployment> --image=<nombre-imagen>`: Crea un nuevo despliegue usando la imagen especificada.
        - `kubectl create service clusterip <nombre-servicio> --tcp=<puerto>:<puerto>`: Crea un servicio de tipo ClusterIP.
        - `kubectl create configmap <nombre-configmap> --from-literal=<clave>=<valor>`: Crea un ConfigMap para almacenar configuraciones.
        - `kubectl create secret generic <nombre-secret> --from-literal=<clave>=<valor>`: Crea un secreto para manejar datos sensibles.
        - `kubectl apply -f <archivo.yaml>`: Aplica configuraciones de recursos desde un archivo YAML existente.
      - **Manejo de Pods y Despliegues:**
        - `kubectl describe pod <nombre-pod>`: Muestra detalles sobre un pod específico.
        - `kubectl logs <nombre-pod>`: Muestra los registros de un pod.
        - `kubectl exec -it <nombre-pod> -- /bin/sh`: Abre una sesión interactiva en un contenedor.
        - `kubectl scale deployment <nombre-deployment> --replicas=<n>`: Escala un despliegue a un número específico de réplicas.
        - `kubectl rollout status deployment/<nombre-deployment>`: Verifica el estado del despliegue.
        - `kubectl rollout undo deployment/<nombre-deployment>`: Revierte a la versión anterior de un despliegue.
      - **Manejo de Redes:**
        - `kubectl port-forward <nombre-pod> <puerto-local>:<puerto-pod>`: Redirige el tráfico de un puerto local a un puerto en un pod.
        - `kubectl expose deployment <nombre-deployment> --type=LoadBalancer --port=<puerto>`: Expone un despliegue como un servicio accesible externamente.
   
      > Conceptos básicos de Kubernetes: administración de pods, despliegues, servicios y escalado, si el tiempo y el interés lo permiten.


   ### Gestion de Repositorios y Control de Codigo:
   El control de versiones con Git es una herramienta fundamental en el desarrollo de software. 
   Permite rastrear cambios en el código, colaborar eficientemente en proyectos y revertir a versiones anteriores si es necesario. 
   Esta guía te ayudará a dominar los comandos esenciales de Git.
   - [ ] **Uso de Git para Control de Versiones y Repositorios de código**
      - **Configuración de cuenta:**
        - `git config user.name "<nombre>"`: Configura el nombre de usuario para el sistema Git.
        - `git config user.email "<email>"`: Configura el email del usuario para el sistema Git.
        - `git config --list`: Muestra la lista de la configuración actual de Git.
      - **Iniciar / Asociar repositorio / clonar:**
        - `git init`: Inicializa un nuevo repositorio de Git en el directorio actual.
        - `git remote add origin <URL>`: Asocia el repositorio local con un repositorio remoto.
        - `git clone <URL>`: Clona un repositorio remoto en el directorio actual.
        - `git remote -v`: Muestra los repositorios remotos configurados.
      - **Guardar Cambios (Staging & Committing):**
        - `git add .`: Añade todos los cambios en el directorio actual al área de preparación.
        - `git rm <archivo>`: Elimina un archivo del repositorio y del sistema de archivos.
        - `git commit -m "<mensaje>"`: Registra los cambios en el repositorio con un mensaje descriptivo.
        - `git commit --amend`: Modifica el último commit (cambiando el mensaje o agregando más cambios).
      - **Sincronización con Remotos:**
        - `git push`: Envía los commits locales a un repositorio remoto.
        - `git fetch`: Obtiene actualizaciones del repositorio remoto sin fusionarlas con tu copia local.
        - `git pull`: Actualiza el repositorio local con los cambios del repositorio remoto. (**Es un atajo para `git fetch` seguido de `git merge`.**)
      - **Manejo de ramas (Branching):**
        - `git branch`: Muestra las SOLO ramas locales en tu repositorio.
        - `git branch -a`: Muestra TODOS los branches disponibles, tanto locales como remotos.
        - `git checkout -b <nuevo-branch>`: Crea un nuevo branch y se cambia automáticamente a él.
        - `git merge <nombre-rama>`: Fusiona los cambios de la rama especificada en la rama actual.
        - `git branch -d <branch>`: Elimina una rama local.
        - `git push origin --delete <branch>`: Elimina una rama remota.
      - **Historial y estado:**
        - `git status`: Muestra el estado de los archivos en el área de trabajo y el área de preparación.
        - `git diff`: Muestra la diferencia entre los archivos en el área de trabajo y el último commit.
        - `git diff --staged`: Muestra la diferencia entre los archivos en staging y el último commit.
        - `git log --oneline --graph --decorate`: Muestra un historial de commits compacto y visual.
        - `git show <hash-del-commit>`: Muestra la información y los cambios de un commit específico.
        - `git log HEAD..origin/master`: Muestra los commits que están en `origin/master` pero no en `HEAD`.
        - `git checkout <Hash-del-commit o tag>`: Cambia el área de trabajo al estado de un commit o etiqueta específica. 
      <!-- <details>  -->
      <summary>&emsp; <Mostrar/Ocultar> - (**¡Atención! Esto te pondrá en un estado de "HEAD separado".**)</summary>
      <div>
      <table>
         <tr>
            <td>
         > **Nota sobre "HEAD Separado":** Cuando tu HEAD no apunta a una rama sino directamente a un commit (como al usar `git checkout` con un hash o un tag), </br>
         > estás en un estado de "HEAD separado". Si haces commits aquí, no estarán en ninguna rama y pueden ser difíciles de encontrar más tarde. </br>
         > Para guardar esos cambios, siempre crea una nueva rama (`git branch <nombre-nueva-rama>` o `git checkout -b <nombre-nueva-rama>`) antes de hacer commits.
            </td>
         </tr>
      </table>
      </div>
      <!-- </details> -->

     -  **Deshacer Cambios (Undo):**
        - `git checkout -- <archivo>`: Descarta los cambios locales en un archivo, devolviéndolo al estado del último commit.
        - `git reset HEAD <archivo>`: Saca un archivo del área de preparación (staging), pero mantiene los cambios.
        - `git revert <hash-del-commit>`: Crea un nuevo commit que deshace los cambios de un commit anterior de forma segura.
        - `git reset --hard <hash-del-commit>`: (¡Cuidado!) Resetea el repositorio a un commit específico, descartando permanentemente los cambios posteriores.
     -  **Guardado Temporal (Stash):**
        - `git stash`: Guarda temporalmente los cambios no confirmados (sin hacer commit) para limpiar el directorio de trabajo.
        - `git stash list`: Muestra la lista de cambios guardados en el stash.
        - `git stash pop`: Aplica el último cambio guardado y lo elimina de la lista.
        - `git stash apply`: Aplica el último cambio guardado pero lo mantiene en la lista.
     -  **Etiquetas (Tags):**
        - `git tag <nombre-etiqueta>`: Crea una nueva etiqueta (tag) para el commit actual.
        - `git tag -a <nombre-etiqueta> -m "<mensaje>"`: Crea una etiqueta anotada (annotated tag) para el commit actual con un mensaje.
        - `git tag -l`: Lista todas las etiquetas en el repositorio.
        - `git checkout <nombre-etiqueta>`: Cambia el área de trabajo al estado de una etiqueta específica.
        - `git push origin <nombre-etiqueta>`: Envía una etiqueta específica al repositorio remoto.
        - `git push origin --tags`: Envía todas las etiquetas locales al repositorio remoto.
      > Comandos esenciales de Git para gestionar repositorios, configurar cuentas, manejar ramas, sincronizar, inspeccionar el historial y deshacer cambios de forma segura.




