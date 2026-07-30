#!/bin/bash

echo "=========================================="
echo "Instalador de la App UniSimón para Bazzite"
echo "=========================================="

# Definir la URL de tu repositorio y la carpeta donde se instalará (en el directorio de inicio del usuario)
REPO_URL="https://github.com/NextFoxOpenSG/Universidad-Simon-Bolivar-Linux-.git"
APP_DIR="$HOME/Universidad-Simon-Bolivar-Linux-"

# 1. Clonar el repositorio
echo "[1/4] Clonando el repositorio desde GitHub..."
# Si la carpeta ya existe, la elimina para hacer una instalación limpia
if [ -d "$APP_DIR" ]; then
    rm -rf "$APP_DIR"
fi
git clone $REPO_URL "$APP_DIR"

# Entrar a la carpeta recién clonada
cd "$APP_DIR"

# 2. Crear el entorno virtual
echo "[2/4] Creando el entorno virtual de Python..."
python3 -m venv venv

# 3. Instalar las dependencias gráficas
echo "[3/4] Instalando librerías (PyQt6 y WebEngine)..."
./venv/bin/pip install PyQt6 PyQt6-WebEngine

# 4. Crear el lanzador .desktop para el menú de aplicaciones
echo "[4/4] Creando el acceso directo en el sistema..."
DESKTOP_DIR="$HOME/.local/share/applications"
mkdir -p "$DESKTOP_DIR"
DESKTOP_FILE="$DESKTOP_DIR/unisimon.desktop"

# Escribir el archivo .desktop usando las rutas absolutas donde quedó instalada la app
cat <<EOF > "$DESKTOP_FILE"
[Desktop Entry]
Version=1.0
Name=UniSimón
Comment=App nativa de la Universidad Simón Bolívar
Exec=$APP_DIR/venv/bin/python $APP_DIR/main.py
Icon=web-browser
Terminal=false
Type=Application
Categories=Network;Education;
EOF

update-desktop-database "$DESKTOP_DIR" &> /dev/null

echo "=========================================="
echo "¡Instalación completada con éxito!"
echo "La app se instaló en: $APP_DIR"
echo "Ya puedes buscar 'UniSimón' en tu menú de aplicaciones."
echo "=========================================="
