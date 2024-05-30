# Gestión de Paquetes en Linux


  - [Equivalencias_apt_vs_dnf](https://docs.fedoraproject.org/es/quick-docs/dnf-vs-apt/)**
   - Debian y Derivados (apt):
     - `apt update`: Actualizar la lista de paquetes disponibles.
     - `apt search`: Buscar paquetes.
     - `apt install`: Instalar paquetes.
     - `apt upgrade`: Actualizar paquetes instalados a las versiones más recientes.
     - `apt show`: Mostrar información detallada de un paquete, incluyendo proveedores.
     - `apt policy`: Mostrar las versiones instaladas y disponibles de un paquete.
     - `apt list`: Listar todos los paquetes disponibles.
     - `apt list --installed`: Listar todos los paquetes instalados.
     - `dpkg -l `: Listar todos los paquetes instalados. (En Distribuciones mas viejas derivadas de debian)
     - `apt-mark hold <package_name>`: Fijar versión de un paquete.
     - `apt-mark unhold <package_name>`: Liberar un paquete para actualización.
     - `apt-mark showhold`: Mostrar listado de paquetes bloqueados.
     - Agregar Repositorios en Debian y Derivados.
     </br>Extras:</br>
     - `sudo apt list --installed | awk -F/ -v ORS=" " 'NR>1 {print $1}' > completePackage.txt `: Generar una lista de todos los paquetes instalados
     - `sudo apt install < completePackage.txt `: Instalar todos los paquetes de la lista.
     - `sudo apt install -y ubuntu-mate-desktop`: Instalar Entorno de Escritorio Mate.
     - `sudo apt install -y kde-standard`: Instalar Entorno de Escritorio KDE-Plasma.
       > Configura y añade repositorios adicionales para acceder a más paquetes. 
  
   - RedHat y Derivados (dnf):
     - `dnf search`: Buscar paquetes.
     - `dnf install`: Instalar paquetes.
     - `dnf update`: Actualizar paquetes instalados.
     - `dnf info`: Mostrar información detallada de un paquete, incluyendo proveedores.
     - `dnf list installed`: Listar todos los paquetes instalados.
     - `rpm -aq`: Listar todos los paquetes instalados (En Distribuciones mas viejas derivadas de RedHat).
     - `dnf providers`: Mostrar proveedores de un paquete.
     - `dnf repolist`: Mostrar listado de repositorios.
     - `dnf clean all`: Limpiar cache, metadata y paquetes obsoletos.
     - `dnf versionlock add <package_name>-<version>`: Fijar versión de un paquete.
     - `dnf versionlock delete <package_name>`: Liberar un paquete para actualización.
     - Agregar Repositorios en RedHat y Derivados.
     </br>Extras:</br>
     - `dnf repository-packages epel list installed`: Mostrar listado de paquetes instalados de un repositorios espesifico.
     - `dnf group install "KDE Plasma Workspaces"`: Instalar el Entorno de Escritorio KDE-Plasma.
     - `dnf install @kde-desktop-environment`: Instalar el Entorno de Escritorio KDE-Plasma.
     - `dnf groupinstall 'MATE Desktop' 'MATE Applications'`: Instalar el Entorno de Escritorio Mate y aplicaciones Mate.
     - `dnf group install "Deepin Desktop"`: Instalar el Entorno de Escritorio Deepin.
         > Configura y añade repositorios adicionales para acceder a más paquetes.


- [ ] **Fijar una versión específica de un paquete**
  - **Debian y Derivados**
    ```sh
    # Fijar versión de un paquete:
    sudo apt-mark hold <package_name>

    # Liberar un paquete para actualización:
    sudo apt-mark unhold <package_name>
    ```
  - **RedHat y Derivados**
    ```sh
    # Instalo el plugin para dnf de versionlock
    sudo dnf install python3-dnf-plugin-versionlock

    # Fijar versión de un paquete:
    sudo dnf versionlock add <package_name>-<version>

    # Liberar un paquete para actualización:
    sudo dnf versionlock delete <package_name>
    ```



## Extras:
- [ ] **Repositorio Oficial Docker:**
  - [Instalacion Docker Ubuntu](https://docs.docker.com/engine/install/ubuntu/) 
  - [Instalacion Docker Fedora](https://docs.docker.com/engine/install/fedora/)
