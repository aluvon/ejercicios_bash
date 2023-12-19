#!/bin/bash
#UT8 Practica 1
#NO ESTA TERMINADO
valor1=0
salida=0
function suma(){
	salida=$(($valor1 + $salida))
	resultado=$salida
	echo $salida
}

while [[ $resultado != 0 ]]
do
	if [[ $valor1 != 0 ]]; then
		read -p "Ingresa un valor: " valor1
		echo "La suma es: "
		suma
	fi
done

