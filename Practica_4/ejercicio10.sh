#!/bin/bash
#He tenido que utilizar los comparadores == y != porque los comparadores -eq y -ne no me funcionaba la comparacion de cadenas.

dia=$(date +%A-%m-%Y | cut -d "-" -f1)
fecha=$(date +%m-%d-%Y)


if [[ $dia == "domingo" ]]; then
	tar -cvzf /copia_seguridad/completa/cop_comp_$fecha.tgz /{etc,root,home}
	echo "Copia realizada de los directorios /etc, /root y /home el dia: `date`" >> /copia_seguridad/completa/fecha.txt
	echo "Copia realizada de los directorios /etc, /root y /home correctamente."

elif [[ $dia != "domingo" ]]; then
        tar -cvzf /copia_seguridad_incremental/cop_inc_$fecha.tgz /etc
        echo "Copia realizada del directorio /etc el dia: `date`" >> /copia_seguridad_incremental/fecha.txt
        echo "Copia realizada del directorio /etc correctamente."

else
	echo "Error"
fi
