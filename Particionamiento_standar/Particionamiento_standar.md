# Particionamiento , Formateo y Montaje

- Identificamos el disco a particionar mirando los logs del kernel o un simple fdisk -l 
 ```sh
sudo dmesg
sudo journalctl --dmesg |grep -i Attached |grep -i disk
tail -f /var/log/dmesg
tail -f /var/log/messages
sudo fdisk -l 
 ```
- Ejecutamos fdisk contra el dispositivo de bloque de forma interactiva o mediante un script.
> Suponiendo que por ejemplo la variable `DISCO=sdb`
 ```sh
fdisk /dev/$DISCO
# Presionamos n para nueva particion
# Presionamos p para particion Tipo Primaria
# Presionamos 1 para indicar que va a ser la particion Nro 1
# Presionamos [Enter] para indicar que comience con el valor por defecto del disco.
# Precionamos +1G Para indicar que el tamaño de la particion va a ser de 1Gb.
# Presionamos p para ver la tabla de particiones.
# Presionamos w para grabar la tabla de particiones.
 ```
 - Forzar que el kernel lea la tabla de particiones sin necesidad de reiniciar el equipo
 ```sh
 sudo partprobe  /dev/sdb
 ```
 
- Una vez realizadas las particiones Procederemos a formatearlas
 ```sh
sudo mkfs -t ext4 /dev/sdb1 
sudo mkfs.ext4   /dev/sdb2 
sudo mkfs.ntfs   /dev/sdb3
sudo mkswap   /dev/sdb4
 ```
- Una vez realizadas Creados los FS para cada particion podemos montarlos para empezar a utilizarlos.
 ```sh
sudo mount /dev/sdb1 /mnt/Particion_01
sudo mount /dev/sdb2 /mnt/Particion_02
sudo mount /dev/sdb3 /mnt/Particion_03
sudo swapon /dev/sdb4
 ```


### Automatizando

- [ ] Ejemplo: Generar un Bash Script, `crea_particiones.sh` que realice las siguientes tareas:

    Crear las siguientes particiones en el disco `/dev/sde`:
  - Particion Primaraia de 200M
  - Particion Extendida.
    - Particion Logica (dentro de la extendida)  de 100M
    - Particion Logica (dentro de la extendida)  del resto del Disco Rigido

 ```sh
 #!/bin/bash
sudo fdisk /dev/sde << EOF
n
p
1

+200M
n
e



n

+100M
n


w
EOF
 ```
> Usando metodologias de redireccionamiento Here-doc: </br>
> Podemos ver como Automatizar el particionamiento.


## Montaje Persistente.

> Si desea que el montaje sea persistente despues de un reinicio de la computadora. </br>
> Puede agregar el dispositivo de bloque en el archivo `/etc/fstab` </br>
> Dicho archivo de configuracion tiene el siguiente formato </br>
> Para ver mas informacion: `man 5 fstab` o puede ver la documentacion de [Arch-Linux](https://wiki.archlinux.org/title/Fstab_(Espa%C3%B1ol)) </br>

- Ejemplos de distintos montajes en `/etc/fstab`
 ```sh
#<dispositivo>                    <punto_de_montaje>        <FileSystem>    <opciones>                                         <dump>  <pass>

# 1. Montaje de la partición sdb1 en /mnt/Particion_sdb1
/dev/sdb1                             /mnt/Particion_sdb1       ext4          defaults                                             0    2
   
# 2. Montaje de disco de Windows (NTFS) en /mnt/Disco_windows   
/dev/sdb1                             /mnt/Disco_windows        ntfs          defaults                                             0    0

# 3. Montaje de disco en red Samba (Windows) en /mnt/disco_red_windows
//pc-windows/disco_compartido_1       /mnt/disco_red_windows    cifs          username=mi_usuario,password=mi_contraseña,nofail    0    0

# 4. Montaje de disco en red Linux (NFS) en /mnt/disco_red_linux
pc-linux:/carpeta_compartida_linux    /mnt/disco_red_linux      nfs           defaults,nofail                                      0    0
     
# 5. Montaje de archivo ISO en /mnt/imagen_iso     
/download/iso/fedora.iso              /mnt/imagen_iso           iso9660       loop                                                 0    0
     
# 6. Montaje de swap en /dev/sdb2     
/dev/sdb2                             none                      swap          defaults                                             0    0

# 7. Montaje con UUID en /mnt/particion_uuid
UUID=xxxx-xxx-xxx-xxx-xxxxxxxxx       /mnt/particion_uuid       ext4          defaults                                             0    0
 ```


- Un Ejemplo de como pueden escribir en el archivo sin usar vim
 ```sh
 sudo mkdir -p /datos/peliculas
 echo "/dev/sde1  /datos/peliculas   ext4  defaults  0 0"  | sudo tee -a /etc/fstab
 sudo systemctl daemon-reload
 sudo mount -a
 ```
 > Supongamos que tenemos una particion `/dev/sde1` que quiero que quede montada de forma persistente en `/datos/peliculas`

