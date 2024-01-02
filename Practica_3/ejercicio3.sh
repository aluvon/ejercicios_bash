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


if [[ $1 -eq "alta" ]] && [[ $# -eq 5 ]]; then
	sudo useradd -m -c "$nombre $apellido1 $apellido2" $nombre -g $grupo
	echo "Se agrego el usuario $nombre correctamente al sistema con el grupo $grupo."

elif [[ $1 -eq "alta" ]] && [[ $# -eq 4 ]] && [[ -n $# ]]; then
	sudo addgroup $nombre
        sudo useradd -m -c "$nombre $apellido1 $apellido2" $nombre -g $nombre
        echo "Se agrego el usuario $nombre correctamente al sistema con el grupo $nombre."

elif [[ $1 -eq "baja" ]] && [[ -n $# ]] && [[ $# -eq 3 ]]; then
	sudo deluser $nombre $grupo

elif [[ -n $# ]]; then
        echo "Error, la sintaxis correcta es para alta: ./gestionusuarios.sh alta nombre apellido1 apellido2 [grupo]"
        echo "Error, la sintaxis correcta es para baja: ./gestionusuarios.sh baja nombre grupo"
else
	echo "Error, la sintaxis correcta es para alta: ./gestionusuarios.sh alta nombre apellido1 apellido2 [grupo]"
        echo "Error, la sintaxis correcta es para baja: ./gestionusuarios.sh baja nombre grupo"
fi

rm temp_nombre.txt temp_apellido1.txt temp_apellido2.txt
