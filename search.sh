#!/bin/bash
fecha=`date '+%Y%m%d'`
filename=/home/agua/images$fecha.tar
ruta=/home/agua/
echo "Archivos encontrados: "
find $ruta -type f -regextype posix-egrep -regex '.*(jpg|gif|png)$'
echo "Agregando archivos..."
tar -cvf $filename `find . $ruta \( -name '*.gif' -o -name '*.png' -o -name '*.jpg' \)`
if test -t $filename; then
echo "El archivo fue creado..!!!"
gzip -9 $filename
# else
#   echo "No comprimos nada... :("
fi 
echo "Fin..."