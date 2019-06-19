#!/bin/bash
# Buscar archivos multimedia 
# Copiar archivos multimedia a ~/multimedia/
homeMaiz=/home/maiz/
echo "Buscando archivos multimedia"
find $homeMaiz -type f \( -name '*.mp3' -o -name '*.mp4' -o -name '*.wma' \)
echo "Copiando archivos multimedia"
find $homeMaiz -type f \( -name '*.mp3' -o -name '*.mp4' -o -name '*.wma' \) | xargs cp -t $homeMaiz/multimedia/
echo "Los archivos fueron copiados:)"