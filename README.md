# 🐧 Universidad Simón Bolívar - Linux App

> Aplicación de escritorio no oficial para la **Universidad Simón Bolívar (Colombia)**, diseñada específicamente para ofrecer una experiencia nativa, fluida y sin fricciones en sistemas operativos basados en Linux (como Bazzite, Fedora, Ubuntu y Arch Linux).

---

## 🚀 Características Principales

* **Entorno Nativo:** Olvídate de depender de accesos directos desordenados en el navegador; la aplicación corre en su propia ventana dedicada impulsada por PyQt6.
* **Aislamiento Seguro:** Utiliza un entorno virtual (`venv`) independiente para gestionar las dependencias de Python, garantizando la estabilidad del sistema (ideal para sistemas inmutables como Bazzite).
* **Acceso Directo al Sistema:** Se integra perfectamente con el lanzador de aplicaciones de tu entorno de escritorio (KDE Plasma, GNOME, etc.).
* **Ligero y Eficiente:** Consume muchos menos recursos que mantener una pestaña dedicada abierta permanentemente en tu navegador web.

---

## 🛠️ Requisitos del Sistema

Antes de realizar la instalación, asegúrate de contar con lo siguiente en tu sistema operativo:

* **Python 3** instalado en el sistema.
* **Git** (para clonar y actualizar el repositorio).
* Librerías de desarrollo de PyQt6 (manejadas automáticamente por el instalador).

---

## 📥 Instalación Rápida y Automática

Para instalar la aplicación de forma completamente automática en tu equipo, abre tu terminal y ejecuta el siguiente script:

```bash
# 1. Clona el repositorio oficial (si aún no lo has hecho)
git clone [https://github.com/NextFoxOpenSG/Universidad-Simon-Bolivar-Linux-.git](https://github.com/NextFoxOpenSG/Universidad-Simon-Bolivar-Linux-.git)

# 2. Entra a la carpeta del proyecto
cd Universidad-Simon-Bolivar-Linux-

# 3. Dale permisos de ejecución al instalador
chmod +x instalar_unisimon.sh

# 4. Ejecuta el instalador
./instalar_unisimon.sh
