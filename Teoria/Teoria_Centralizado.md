# Informacion Teorica Centralizada 

## Arquitectura  - Componentes de una PC.:
- [ ] MicroProcesador
    - x86 vs ARM [video @tech_geekreview](https://www.youtube.com/watch?v=4izGC6YbMtU)
    - Procesadores x86 de 32 y 64Bits [video @acaele](https://www.youtube.com/watch?v=msOMy8JksZg)
    - Por que no hay x86 de 128bit? [video @acaele](https://www.youtube.com/watch?v=LF_5_lB4mW8)
    - Memoria Cache [video @acaele](https://www.youtube.com/watch?v=0meqGr8EkvE)
    - Comparativa MicroProcesadores Intel [ver documento](../Teoria/Comparativa_Intel.png)
    - Comparativa MicroProcesadores AMD [ver documento](../Teoria/Comparativa_AMD.png)
- [ ] Motherboard
    - Como elegir el Motherboard [video @acaele](https://www.youtube.com/watch?v=R-3rf2ay5Vs)
    - Troubleshooting Motherboard [ver documento](https://hardzone.es/tutoriales/reparacion/comprobar-placa-base-problemas/)
- [ ] Memoria
    - Memoria
    - Memoria RAM - Dual Channel [video @acaele](https://www.youtube.com/watch?v=DcVDSkf0MsA)
    - Memoria Ram - CL [video @acaele](https://www.youtube.com/watch?v=3bAtzt-D33c)
- [ ] Fuente  de alimentacion
    - Como elegir una fuente de alimentacion [ver documento](https://www.intel.la/content/www/xl/es/gaming/resources/power-supply.html)
- [ ] Almacenamiento
    - Tipos de Almacenamientos y Tipos de Conectores [Ver documento](../Almacenamiento/Tipos_Almacenamiento.md)
    - Tabla de particiones [ver documento](../.img/Particionamiento/Tabla_Particiones_GPT.png)
    - PCIe, que es, como funciona? [video @acaele](https://www.youtube.com/watch?v=Fj7F7Qs9-us)

- Varios
    - Que es el cuello de Botella [video @acaele](https://www.youtube.com/watch?v=sEfDrCzwyfI)
    - Como Combinar Procesador+Motherboard [video @acaele](https://www.youtube.com/watch?v=UIGX8D92B6A)
    - DDR6 [lo que se viene](https://hardzone.es/noticias/componentes/especificaciones-memoria-ram-ddr6/)


## SO:
- [ ] Un paseo por la Historia de los Sistemas Operativos
    - El nacimiento de Unix [video @lachicadesistemas](https://www.youtube.com/watch?v=R4znx49SLxA) 
    - Las Guerras Unix [video @lachicadesistemas](https://www.youtube.com/watch?v=OdiKXo7EQ20)
    - Como Nacio GNU/Linux [video @eminwux](https://www.youtube.com/watch?v=Rch039H0SL4)
    - Transmutacion de la Terminal - TTY [video @eminwux](https://www.youtube.com/watch?v=xD8p3PNhChE) 

- [ ] Boot (Te olvidaste la clave de root, Rompiste algo y no levanta GNU/Linux...)
   - Recuperando root en cualquier GNU/Linux [Video @lachicadesistemas](https://www.youtube.com/watch?v=CEWeNrnDvBE)
   - Recuperar un GNU/Linux con grub o grub_rescue[Video @lachicadesistemas](https://www.youtube.com/watch?v=kmxzUmkjOlo)

- [ ] Kernel
   - Analisis Discusion Tanenbaum vs Torvals (Micro-kernel vs Kernel-Monolitico) [video @eminwux](https://www.youtube.com/watch?v=Kqbg1xHZbuw)
   
- [ ] Bash
    - Bash Parte 1 [video @peladonerd](https://www.youtube.com/watch?v=4_ub6614dwY&t=5s)
    - Bash Parte 2 [video @peladonerd](https://www.youtube.com/watch?v=0D6MOPyPq-c&t=18s)
    - Bash Parte 3 [video @peladonerd](https://www.youtube.com/watch?v=BTm__-_YrSw&t=2s)
    
- [ ] Almacenamiento
    - Sistemas de Archivos ["FileSystem"](../Teoria/FileSystem.md)
    - LVM [video @upszot](https://youtu.be/caUXbuu_O0k)

- [ ] Memoria 
    - [ ] Memoria de Intercambio
    - [ ] RamDisk / (ramfs vs tmpfs)
        - Que es un [ramdisk](https://www.kingston.com/latam/blog/pc-performance/what-is-ram-disk)
        - Ram Disk en GNU/Linux y Windows [Como configurar y usar](https://logico.ar/blog/2023/02/17/configurar-ram-disks-en-linux-y-windows)  
        - [otra explicacion.. Ramdisk](https://www.linuxadictos.com/crea-un-ramdisk-en-tu-distribucion-linux.html)

- [ ] Protocolo Comunicacion SSH
    - SSH Parte 1 - mini Explicacion [Video 8' @PeladoNerd](https://www.youtube.com/watch?v=RMS5zBYQIqA)
    - Documentacion y Extras
        - [ssh mucha informacion -  gentoo handbook](https://wiki.gentoo.org/wiki/SSH)
    - SSH Parte 2 - comandos avanzados [Video 13' @PeladoNerd](https://www.youtube.com/watch?v=IDDmqlN-hF0&t=262s)
    - SSH Parte 3 - Comandos de Experto [Video 10' @PeladoNerd](https://www.youtube.com/watch?v=ZHSGGG_WwUs)
    - SSH avanzado
        - ssh jump [Explicacion - How to do](https://wiki.gentoo.org/wiki/SSH_jump_host)
        - ssh tuneles [Explicacion - How to do](https://wiki.gentoo.org/wiki/SSH_tunneling)

## Infraestructura como codigo
- [ ] Ansible
    - Introduccion Ansible [Video - @lachicadesistemas](https://youtu.be/yB7oWJbMd3A?feature=shared)
    - Manual español Ansible [pdf](https://github.com/upszot/UTN-FRA_SO_Ansible/blob/main/Extras/ansible-es.pdf)
- [ ] Docker
    - La historia de los contenedores - Desde 1979 a 2021[video @peladonerd](https://www.youtube.com/watch?v=K0nHZlHNfQ4)
    - Docker de noob-to-pro [video @peladonerd](https://www.youtube.com/watch?v=CV_Uf3Dq-EU&t=2867s)
    - Manual español Docker [pdf](https://github.com/upszot/UTN-FRA_SO_Docker/blob/master/Extras/docker-es.pdf)
    - [CheatSheet-Docker](https://dockerlabs.collabnix.com/docker/cheatsheet)
- [ ] Kubernetes (extras)
    - Kubernetes de noob-to-pro [video @peladonerd](https://www.youtube.com/watch?v=CV_Uf3Dq-EU&t=2867s)
    - [CheatSheet-oc-cli](https://cheatography.com/itservicestart-up/cheat-sheets/oc-cli-commands/pdf/?last=1479976646)

## Herramientas
- [ ] Editor VIM y variantes
    - Atajos vim [Video 11' del @PeladoNerd](https://www.youtube.com/watch?v=TmNa4y-K5Z8)   
    - Extra (Variantes):
        - nvim [neoVim - GUI de Desarrollo Moderna y LIVIANA, basada en VIM... (competencia de vscode)](https://neovim.io/)
        - Instalando y configurando Nvim (WSL)[Video](https://www.youtube.com/watch?v=xBU2nuMCMRQ)
- [ ] Networking
    - CURL [video @donwebcloud](https://www.youtube.com/watch?v=n3NtrQYrjDw)  La navaja suiza que necesitas si eres programador
- [ ] VirtualBox
     - Instalacion manual de virtualbox en windows [video](https://www.youtube.com/watch?v=uiFZUfmFAus)


## Otros Extras

- [ ] Películas relacionadas

  - [ ] **La Era de los Pioneros (Segunda Guerra Mundial y Posguerra)**
    *El nacimiento de la computación moderna para descifrar códigos y realizar cálculos complejos.*
    - **Código Enigma (The Imitation Game, 2014):** Alan Turing y la máquina "Christopher" (electromecánica). Ideal para hablar de la Máquina de Turing y lógica computacional.
    - **Oppenheimer (2023):** Muestra la urgencia de los cálculos numéricos masivos. Aparece John von Neumann, Padre de la arquitectura de computadoras modernas (CPU, Memoria, E/S), Se gesto la necesidad de la "Computación de Alto Rendimiento" (HPC).
    - **Talentos Ocultos (Hidden Figures, 2016):** Excelente para mostrar la **Primera Generación (tubos al vacío)** y la **Segunda (transistores)** con el paso de los "procedimientos manuales" a la programación en FORTRAN para el IBM 7094.

  - [ ] **El nacimiento de las PC y la guerra de Arquitecturas (Años 70 - 90)**
    *Sobre la interfaz gráfica, sistemas operativos y estandarización.*
    - **Piratas de Silicon Valley (1999):** La rivalidad Gates vs. Jobs. Fundamental para entender el concepto de GUI (Interfaz Gráfica) y cómo Microsoft licenció un SO (DOS) sin tenerlo terminado.
    - **Steve Jobs (2015):** Útil para ver la evolución del hardware (Macintosh vs. NeXT).
    - **Micro Men (2009):** Joya de la BBC sobre la computación británica. Muestra la arquitectura del BBC Micro y los procesadores **ARM** (que hoy usan todos los celulares y las Mac nuevas).
    - **Silicon Cowboys (2016):** La historia de Compaq y la ingeniería inversa al BIOS de IBM para crear el mercado de las "PC Compatibles".

  - [ ] **El auge del Internet y la cultura Hacker (Años 80 - 2000)**
    *Ética, seguridad, redes y software libre.*
    - **WarGames (Juegos de Guerra, 1983):** Conceptos tempranos de IA, módems telefónicos (Wardialing) y seguridad en sistemas críticos.
    - **Revolution OS (2001 - Documental):** La biblia para entender por qué usamos Linux en los servidores. Explica el kernel, el código abierto y la arquitectura de software libre.
    - **The Net (La Red, 1995):** Ficción sobre el poder de las bases de datos distribuidas y el robo de identidad.
    - **Takedown (Operación Takedown, 2000):** La captura de Kevin Mitnick. Muy buena para hablar de ingeniería social y vulnerabilidades de protocolos.

  - [ ] **Redes y Era Moderna:**
    - **La red social (The Social Network, 2010):** Más allá del drama, sirve para hablar de **escalabilidad de servidores**, algoritmos y la arquitectura detrás de una plataforma masiva.


- [ ] Fabricacion de Antenas Wireless
    - [ ] Proyecto Antenas wifi Belgrano [Carpeta_de_Todas_las_Plantillas](../Extras/Fabricacion_Antenas_Wifi/Proyecto_Antenas_Belgrano/)
        - Parabolicas Centrada Optimizada para Nuclos Belgrano [Planos](../Extras/Fabricacion_Antenas_Wifi/Proyecto_Antenas_Belgrano/Parabolica_Centrada_para_Iluminador_Belgrano/)
        - Belgrano Original [Plantillas](../Extras/Fabricacion_Antenas_Wifi/Proyecto_Antenas_Belgrano/Belgrano/05-05-2010-Belgrano%20Mandarache%20x%20chalenger.pdf)
        - Belgrano 2Ni [Plantillas](../Extras/Fabricacion_Antenas_Wifi/Proyecto_Antenas_Belgrano/Belgrano_2Ni/Belgrano-2ni_20110907.pdf)
        - Belgrano Caridad [video @mandarache2010](https://www.youtube.com/watch?v=9nzxYgaYgHk) , Mas informacion [foro](https://foro.seguridadwireless.net/antenas/belgrano-caridad/) , Como construirla [Plantillas](../Extras/Fabricacion_Antenas_Wifi/Proyecto_Antenas_Belgrano/Belgrano_Caridad/)
        - Belgrano Cataro (Dual band 2.4 y 5Ghz - PCB) [Plantilla](../Extras/Fabricacion_Antenas_Wifi/Proyecto_Antenas_Belgrano/Belgrano_Cataro/)
        - Belgrano Mexico [Foro](https://foro.seguridadwireless.net/antenas/belgrano-mexico-otro-exito-del-proyecto-belgrano/)
        - Belgrano Windalo [Plantillas](../Extras/Fabricacion_Antenas_Wifi/Proyecto_Antenas_Belgrano/Belgrano_Windalo/)

    > Se encontraran toda la documentacion para crear distintas Antenas e Iluminadores, </br>
    > Incluso los planos de creacion de Parabolica centrada optimizada para los Nucleos Belgrano

