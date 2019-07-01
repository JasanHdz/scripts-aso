#!/bin/bash
# Creamos fecha actual
fecha=`date '+%Y%m%d'`
# Creamos la carpeta update si no existe
#Creamos una variable con el destino del archivo final
ruta=/var/log/update$fecha.log
# Hacemos una actualización del sistema y la almacenamos en la ruta.
yum update -y >> $ruta