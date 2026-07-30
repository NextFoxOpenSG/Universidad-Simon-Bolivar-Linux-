#!/bin/bash

echo "Iniciando instalación de UniSimón App..."

# Obtener la ruta absoluta actual del directorio del proyecto
APP_DIR=$(pwd)

# 1. Crear el entorno virtual
echo "Configurando el entorno virtual..."
python3 -m venv venv

# 2. Instalar dependencias
echo "Descargando e instalando dependencias (PyQt6 y WebEngine)..."
$APP_DIR/venv/bin/pip install PyQt6 PyQt6-WebEngine

# 3. Crear el lanzador .desktop automáticamente con la ruta correcta
echo "Creando el acceso directo en el menú de aplicaciones..."
DESKTOP_DIR="$HOME/.local/share/applications"
mkdir -p "$DESKTOP_DIR"
DESKTOP_FILE="$DESKTOP_DIR/unisimon.desktop"

cat < "$DESKTOP_FILE"
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

# Actualizar la base de datos de íconos del sistema
update-desktop-database "$DESKTOP_DIR" &> /dev/null

echo "=========================================="
echo "¡Instalación completada con éxito!"
echo "Ya puedes buscar 'UniSimón' en tu menú de aplicaciones."
echo "=========================================="
