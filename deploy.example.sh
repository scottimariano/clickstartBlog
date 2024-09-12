#!/bin/bash

# Configuraciones
USER="user"
SERVER="111.111.111.111"
REMOTE_DIR="/home/example/htdocs/domain"
LOCAL_DIR="./dist"
SSH_PORT="22"

echo ""
echo "Este script realizará el build del proyecto, borrará los archivos en el servidor y copiará los archivos nuevos."
read -p "Estas seguro de continuar?? (y/n) " confirm

if [ "$confirm" != "y" ] && [ "$confirm" != "Y" ]; then
    echo "No hay nada de que avergonzarse..."
    exit 0
fi

echo ""
echo "Despliegue confirmado. Continuando con el proceso..."

# Verificación de la rama actual de Git
BRANCH=$(git rev-parse --abbrev-ref HEAD)

if [ "$BRANCH" != "main" ]; then
    echo "No estás en la rama 'main'. Estás en la rama '$BRANCH'."
    exit 1
fi
echo "Estás en la rama 'main'. Continuando con el proceso..."

# Build del proyecto
npm run build
echo "Buildiando el proyecto en la carpeta ./dist"

# Contar archivos locales
local_file_count=$(find "$LOCAL_DIR" -type f | wc -l)
echo "Archivos en la carpeta local: $local_file_count"

# Conexión SSH para borrar archivos remotos
echo "Conectándose al servidor"
ssh -p "$SSH_PORT" "$USER@$SERVER" "rm -rf $REMOTE_DIR/*"

if [ $? -ne 0 ]; then
    echo "Error al borrar archivos en el servidor remoto."
    exit 1
fi

echo "Archivos borrados en el servidor remoto."

# Copiando archivos locales al servidor remoto
echo "Copiando archivos a la carpeta remota..."
scp -P "$SSH_PORT" -q -r "$LOCAL_DIR"/* "$USER@$SERVER:$REMOTE_DIR/"

if [ $? -ne 0 ]; then
    echo "Error al copiar archivos."
    exit 1
fi

echo "Archivos copiados exitosamente."

# Contar archivos en el servidor remoto
remote_file_count=$(ssh -p "$SSH_PORT" "$USER@$SERVER" "find $REMOTE_DIR -type f | wc -l")
echo "Archivos en la carpeta remota: $remote_file_count"

# Validar que el número de archivos es el mismo
if [ "$local_file_count" -eq "$remote_file_count" ]; then
    echo "Validación exitosa: la cantidad de archivos es la misma."
else
    echo "Error: la cantidad de archivos en el servidor no coincide con los archivos locales."
    exit 1
fi

echo "Proceso de despliegue completado."
