#!/bin/bash
# TIENE ALGUNOS ERRORES PERO SE PUEDE MEJORAR, con usuarios como: admin01, smmta, cup, y los creados en el ejercticio3 funciona bien.
nombre=$1
grupo=$2

lista_nombre=$(echo "$nombre")
lista_grupo=$(echo "$grupo")
id_passwd=$(grep $1 /etc/passwd | cut -d ":" -f4)
id_group=$(grep $id_passwd /etc/group | cut -d ":" -f3)

echo "lista nombre: $lista_nombre"
echo "lista grupo: $lista_grupo"
echo "passwd id: $id_passwd"
echo "group id: $id_group"
echo ""

for i in $lista_nombre;
do
	if [[ $i -eq $nombre ]] && [[ $# -eq 2 ]]; then
		if [[ $id_passwd -eq $id_group ]]; then
			echo "La informacion personal del usuario $1 es: "
			grep $nombre /etc/passwd | cut -d ":" -f5
		fi
	else
		echo "Error; tienes que colocar 2 parametros (./ejercicio4.sh nombre_usuario nombre_grupo) --> ejemplo: ./ejercicio4.sh cup cup"
	fi
done


