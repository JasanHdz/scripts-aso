#!/bin/bash
find ~ -type f -regextype posix-egrep -regex '.*(c|java|cpp|c++)$' > ~/listaC
nUser=$(whoami)
for narch in $(cat ~/listaC)
do 
ext=$(echo $narch | gawk '{print $2}' FS=".")
case $ext in 
'java') 
    varjava=$(echo $narch | gawk '{print $1}' FS=".")'.class'
    javac $narch 
    mv $varjava /var/ftp/pub/'salida'.$varjava'.'$nUser
    ;;
'c')
    var='salida.'$narch'.'$nUser
    gcc $narch -o $var
    ;;
'cpp') 
    var='salida.'$narch'.'$nUser
    g++ $narch -o $var
    ;;
esac