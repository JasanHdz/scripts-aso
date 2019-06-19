#!/bin/bash
# Listar a todos los usuarios del grupo Admon
# Almacenar los usuarios en archivo /var/log/nombres.log
ruta=/var/log/nombres.log
echo "Lista de usuarios del Grupo admon"
cat /etc/group | grep admon 
echo "Los usuarios fueron copiados a: $ruta :) "
cat /etc/group | grep admon > $ruta
cat $ruta
