#!/bin/bash
fecha=`date '+%Y%m%d'`
res=archivosC
mkdir $res
filename=~/$res$fecha.tar
ruta=~/
echo "Archivos encontrados: "
find $ruta -type f -regextype posix-egrep -regex '.*(c|java|cpp|c++)$'
echo "Agregando archivos..."
tar -cvf $filename `find . $ruta \( -name '*.java' -o -name '*.cpp' -o -name '*.c' -o -name '*.c++' \)`
if test -t $filename; then
echo "El archivo fue creado..!!!"
gzip -9 $filename
fi 
echo "Fin..."