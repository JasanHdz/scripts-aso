#!/bin/bash
# Author Jasan Hernandez
clear
result=0
num1 num2
getNumbers() {
  echo "Introduce el primer número"
  read n1
  num1=n1
  echo "Introduce el segundo número"
  read n2
  num2=n2
}
while [ true ]
do 
echo "::: Bienvenido a la Calculadora Shell"
echo "::: Elige alguna de las siguientes opciones"
echo "1. Sumar"
echo "2. Restar"
echo "3. Multiplicar"
echo "4: Dividir"
echo "0. Salir"
read option
case $option in 
  0)  echo "Saliendo de la calculadora..."
      exit;;
  1)  getNumbers
      result=$[num1+num2]
      echo "El Resultado de Sumar $[num1] + $[num2] es = ${result}";;
  2)  getNumbers
      result=$[num1-num2]
      echo "El Resultado de Restar $[num1] - $[num2] es = ${result}";;
  3)  getNumbers
      result=`expr $[num1] \* $[num2]`
      echo "El Resultado de Múltiplicar $[num1] x $[num2] es = ${result}";;
  4)  getNumbers
      if [ $[num1] -gt 0 ] && [ $[num2] -gt 0 ] 
      then result=`expr $[num1] / $[num2]`
      echo "El Resultado de Dividir $[num1] / $[num2] es = ${result}"
      else echo "La división por 0 no es permitida :("
      fi;;
  esac
  done