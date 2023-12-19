#!/bin/bash
#UT8 Practica 1
#   $# --> cuenta cuantos parametros se le pasan.
if [ $# -eq 2 ]; then
	(( z=$1 + $2 ))
	echo "Tu resultado es: "$z
else
	echo "Tienes que colocar dos numero al ejecutar el script por ejemplo: ./ejercicio2.sh 2 6"
fi
