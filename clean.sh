#!/bin/bash
# Eliminar los archivos de de Extension C en el Directorio de Tomate
# Guardar los nombres de los archivos eliminados 
homeTomate=/home/tomate/
# Listamos Todos lo archivos existentes
# Copiamos el nombre de los archivos que eliminaremos a un archivo
find $homeTomate -type f -name "*.c" > /home/tomate/eliminados.txt
find $homeTomate -type f -name "*.c" -delete
echo "Los archivos fueron eliminados :)"

