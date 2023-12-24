#!/bin/bash
if [[ -e "$1" && -d "$1" ]]; then
	info=`ls -R $1`
	contadordirectorios=0
	contadorficheros=0
echo "$info"
       	for i in $info;
       	do
		if [[ -d "$1/$i" ]]; then
			((contadordirectorios++))
		elif [[ -f "$1/$i" ]]; then
			((contadorficheros++))
		fi
	done
	echo "Cantidad de directorios: $contadordirectorios"
	echo "Cantidad de ficheros: $contadorficheros"
else
	echo "El parametro ingresado no es de tipo directorio o no existe."
fi
