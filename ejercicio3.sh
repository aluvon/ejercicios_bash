#!/bin/bash

if [[ -a $1 ]]; then
	echo "El fichero existe y es un FICHERO."
elif [[ -d $1 ]]; then
	echo "EL parametro ingresado existe y es un DIRECTORIO"
else
	echo "No se encuentra el parametro ingresado. Verifique su sintaxis. Ejemplo: ./ejercicio3.sh archivo-o-directorio"
fi
