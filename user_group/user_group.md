# Gestion de usuarios y grupos.

- [ ] **Creacion de usuarios**
  - Usaremos el comando  `useradd` con los siguientes parametros.
  - `-m` Para que cree el directorio home del usuario
  - `-s` Para indicarle el interprete de comandos (Shell)
  - `-c` Para agregar un comentario
  - Como ultimo parametro el nombre del usuario a crear
```sh
useradd -m -s /bin/bash -c "esto es un comentario" newuser
```

- [ ] **Creacion de grupos** 
  - Usaremos el comando  `groupadd` seguido del nombre del grupo a crear
```sh
groupadd NewGroup
```

### **Ejemplos**
  - Si queremos crear un usuario pepe que tenga como grupo secundario al grupo Alumnos
```sh
groupadd Alumnos
useradd -m -s /bin/bash -c "Alumno pepe" -G Alumnos pepe
```
  - Podemos comprobar la correcta creacion del grupo y del usuario con los siguiente comandos
```sh
# Compruebo la creacion del usuario pepe, su directorio home, comentario e interprete de comando
grep pepe /etc/passwd
# Compruebo la existencia del grupo Alumno y que usuarios pertenecen al mismo
grep -i alumno /etc/group
# Comprobar los grupos de pertenencia del usuario pepe
id pepe
# Valido que se haya creado el directorio home del usuario pepe
ls -l /home
```
- Setear una clave para un usuario
```sh
# Como root ejecuto el siguiente comando
passwd pepe
```
- Logearnos con el usuario pepe
```sh
su - pepe
```
- Obtener el Hash de la clave del usuario pepe
```sh
grep pepe /etc/shadow | awk -F ':' '{print $2}'
```
- Crear el usuario juan con la misma clave que el usuario pepe.
```sh
# Creo el usuario juan con la misma clave que pepe
sudo useradd -m -s /bin/bash -c "usuario juan" -p "$(sudo grep pepe /etc/shadow | awk -F ':' '{print $2}')" juan

# Valido que tengan la misma clave
sudo grep -E 'pepe|juan' /etc/shadow |awk -F ':' '{print $2}'

# Si quisiera ver si hay diferencias con un diff...
diff <(sudo grep 'pepe' /etc/shadow | awk -F ':' '{print $2}') <(sudo grep 'juan' /etc/shadow | awk -F ':' '{print $2}')
```
