# Machete LVM

> La idea de este documento es tener una ayuda memoria Con los pasos a seguir </br>
> Para Trabajar con LVM </br>



- [ ]**Creacion y Agrandar**
> Supongamos que agregamos un disco rigido y el mismo es reconocido por el sistema como "sdb" </br>

- Para Crear y Agrandar
 ```sh
#1. Agregar disco... crear particio 8e en el disco nuevo (fdisk)
#2. Crear particion disco tipo lvm (8e) 
fdisk /dev/sdb
#2.1 Limpiar mugre del disco... sobre todo en virtuales
wipefs -a /dev/sdb1

#3. crear el pv
pvcreate /dev/sdb1

#4. crear vg
vgcreate vg_oracle /dev/sdb1
	#4 Bis. Si ya existe  ->  agregar el pv en el vg
	vgextend vg_oracle /dev/sdb1

#5. Crear lv 
lvcreate -l +100%FREE  vg_oracle -n lv_oracle
	#5 Bis. Si ya existe  ->  extender lv
	lvextend -l +100%FREE /dev/mapper/vg_oracle-lv_oracle   # Puedo usar un %
	lvextend -L +1G /dev/mapper/vg_oracle-lv_oracle         # o Puedo indicar un Tamaño

#6. crear el fs 
mkfs.ext4 /dev/mapper/vg_oracle-lv_oracle
	#6 Bis. Si ya existe  ->  agrandar fs (si el fs es xfs usar xfs_growfs)
	resize2fs /dev/mapper/vg_oracle-lv_oracle
```

- Para Achicar / quitar
```sh
# 1. Desmonto el lv
umount /home/

# 2. chekear Errores y repara
e2fsck -f /dev/mapper/vg_hdd-lv_home

# 3. Achicar el File System
resize2fs /dev/mapper/vg_hdd-lv_home  30G

# 4. Reducir el logical volume
lvreduce -L 30G /dev/mapper/vg_hdd-lv_home

# 5. chekear Errores y repara
e2fsck -f /dev/mapper/vg_hdd-lv_home

# 6. Volver a Montar
mount /home/
```