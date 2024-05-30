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
- Una vez realizadas las particiones Procederemos a formatearlas
 ```sh
sudo mkfs -t ext4 /dev/sdb1 
sudo mkfs.ext4 /dev/sdb2 
sudo mkfs.ntfs /dev/sdb3
sudo mkswap/dev/sdb4
 ```
- Una vez realizadas Creados los FS para cada particion podemos montarlos para empezar a utilizarlos.
 ```sh
sudo mount /dev/sdb1 /mnt/Particion_01
sudo mount /dev/sdb2 /mnt/Particion_02
sudo mount /dev/sdb3 /mnt/Particion_03
sudo swapon /dev/sdb4
 ```

