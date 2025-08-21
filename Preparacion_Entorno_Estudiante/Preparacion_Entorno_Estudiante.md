# Preparación del entorno del estudiante: 

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
   choco install -y git --params "/NoOpenSSH" sublimetext4 virtualbox virtualbox-guest-additions-guest.install vagrant mobaxterm putty.portable winscp   --log-file=c:\chocolatey_install.log
   ```
   ### Tener Descargadas (Para optimizar tiempos)
   - ISO de instalacion [Descargar_ISO_Fedora-Mate](https://fedoraproject.org/es/spins/mate/download)
   - Disco Rigido Virtual(VDI) con Ubuntu instalado [Descargar-VDI](https://sourceforge.net/projects/osboxes/files/v/vb/55-U-u/24.04/64bit.7z/download)
   > Configura el entorno del estudiante con las herramientas necesarias para el curso.
