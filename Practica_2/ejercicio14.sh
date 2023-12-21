#!/bin/bash
contador=0
for i in `ls $1`;
	do
		if [[ -d "$1/$i" ]]; then
			echo "El directorio $1/$i"
			echo "Y dentro contiene $contador directorios."
		elif [[ -f "$1/$i" ]]; then
			echo "El fichero $1/$i"
			echo "Y dentro contiene $contador ficheros."
		fi
	((contador++))
	done
echo "Usted tiene un total de: $contador"
