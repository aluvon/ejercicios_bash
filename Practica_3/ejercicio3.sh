#!/bin/bash
nombre=$2
apellido1=$3
apellido2=$4
grupo=$5

echo "$nombre" >> temp_nombre.txt
echo "$apellido1" >> temp_apellido1.txt
echo "$apellido2" >> temp_apellido2.txt

x=$(grep -o "^.." temp_nombre.txt)
y=$(grep -o "^.." temp_apellido1.txt)
z=$(grep -o "^.." temp_apellido2.txt)


if [[ $1 -eq "alta" ]] && [[ $# -eq 5 ]]; then # en este apartado luego de finalizar correctamente al realizar cat /etc/passwd me aparece un simbolo entre el nombre y apellido1, no se que es.
	sudo useradd -m -c "$nombreÂ$apellido1 $apellido2" $nombre -g $grupo
	echo "Se agrego el usuario $nombre correctamente al sistema con el grupo $grupo."

elif [[ $1 -eq "alta" ]] && [[ $# -eq 4 ]] && [[ -n $# ]]; then # en este apartado luego de finalizar correctamente al realizar cat /etc/passwd esta perfecto.
	sudo addgroup $nombre
        sudo useradd -m -c "$nombre $apellido1 $apellido2" $nombre -g $nombre
        echo "Se agrego el usuario $nombre correctamente al sistema con el grupo $nombre."

elif [[ $1 -eq "baja" ]] && [[ -n $2 ]] && [[ $# -eq 2 ]]; then
	sudo deluser $nombre

elif [[ -n $# ]]; then
        echo "Error, la sintaxis correcta es para alta: ./gestionusuarios.sh alta nombre apellido1 apellido2 [grupo]"
        echo "Error, la sintaxis correcta es para baja: ./gestionusuarios.sh baja nombre"
else
	echo "Error, la sintaxis correcta es para alta: ./gestionusuarios.sh alta nombre apellido1 apellido2 [grupo]"
        echo "Error, la sintaxis correcta es para baja: ./gestionusuarios.sh baja nombre"
fi

rm temp_nombre.txt temp_apellido1.txt temp_apellido2.txt
