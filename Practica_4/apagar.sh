#!/bin/bash
echo "Es este script si quieres que se reinicie el ordenador --> ./apagar.sh yes"
echo "Si quieres ver mas opciones no coloques ningun parametro --> ./apagar.sh"
echo ""
function reiniciar(){
	reboot
}
function reiniciar_en(){
	sleep $tiempo && reboot
}

if [[ $# == 0 ]]; then

	echo "1-Reiniciar ahora."
	echo "2-Ingresa el tiempo en segundos para reiniciar el equipo."
	echo "3-Salir."
	echo ""

	read -p "Seleccione la opcion deceada para reiniciar su equipo: " opcion

	case $opcion in
		1)
		reiniciar
		;;
		2)
		read -p "Ingresa el tiempo en segundos: " tiempo
		reiniciar_en
		;;
		3)
		`exit`
		;;
		*)
		echo "Error de sintaxis, tienes 3 opciones para seleccionar."
		;;
	esac


elif [[ $1 -eq "yes" ]]; then
        echo "Reiniciando su equipo"
        reiniciar

else
	echo "Error verifica tu parametro"
fi
