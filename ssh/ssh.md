# SSH - Secure Shell

>El Secure Shell (SSH) es un protocolo de red que proporciona una forma segura de acceder a una computadora remota a través de una conexión encriptada. SSH permite iniciar sesión de manera segura, ejecutar comandos y transferir archivos de forma segura entre sistemas.

## Creación de Certificado SSH

Para crear un par de claves SSH en tu máquina local, ejecuta el siguiente comando en tu terminal:

```sh
ssh-keygen 
```
## Usando ssh
- Conexión a un Equipo Remoto
```sh
ssh usuario@direccion_ip_o_nombre_de_servidor
```
- Ejecutar un Comando en un Equipo Remoto
```sh
ssh usuario@direccion_ip_o_nombre_de_servidor 'ls -l'
```
- Conexión con Usuario y Puerto Distinto
```sh
ssh -p puerto_usuario usuario@direccion_ip_o_nombre_de_servidor
```
- Copiar el Certificado SSH
```sh
ssh-copy-id usuario@direccion_ip_o_nombre_de_servidor
```
## SCP - Secure Copy Protocol (Copiando Archivos entre equipos a través de una conexión SSH)

- Para copiar un archivo a un equipo remoto usando SCP, utiliza el siguiente comando:
```sh
scp archivo usuario@direccion_ip_o_nombre_de_servidor:ruta_destino
```
- Para traer un archivo desde un equipo remoto utilizando SCP, ejecuta el siguiente comando:
```sh
scp usuario@direccion_ip_o_nombre_de_servidor:ruta_archivo_local ruta_destino_local
```

### Tuneando mi ssh
  - Customizando mis ssh [$HOME/.ssh/Config](config) -> [Ejemplo.conf](config.d/ssh_casa.conf)

### Documentacion y Extras
  - [ssh mucha informacion -  gentoo handbook](https://wiki.gentoo.org/wiki/SSH)
  - [Video 8' mini Explicacion - @PeladoNerd](https://www.youtube.com/watch?v=RMS5zBYQIqA)
  - [Video 13' SSH Parte2 - comandos avanzados - @PeladoNerd](https://www.youtube.com/watch?v=IDDmqlN-hF0&t=262s)
  - [Video 10' SSH Parte 3 - Comandos de Experto - @PeladoNerd](https://www.youtube.com/watch?v=ZHSGGG_WwUs)

### SSH avanzado
  - [ssh jump](https://wiki.gentoo.org/wiki/SSH_jump_host)
  - [ssh tuneles](https://wiki.gentoo.org/wiki/SSH_tunneling)
