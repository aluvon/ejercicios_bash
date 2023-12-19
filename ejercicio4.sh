#!/bin/bash
#UT8 Practica 1
if [[ -a $1 && -r $1 ]]; then
	echo "El parametro ingresado EXISTE, es un FICHERO y es de LECTURA."
else
	echo "No se encuentra el parametro ingresado. Verifique su sintaxis."
fi
