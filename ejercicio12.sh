#!/bin/bash
#UT8 Practica 1

function suma(){
	echo $(($valor1 + $valor2))
}
function resta(){
	echo $(($valor1 - $valor2))
}
function div(){
	echo $(($valor1 / $valor2))
}
function mult(){
	echo $(($valor1 * $valor2))
}
function salir(){
	exit
}
echo "Hola, en eread -p "Igresa el primer valor " valor1

read -p "INgresa el segundo valor " valor2ste script realizare las operaciones matematicas"
echo "Selecciona la operacion que deseas realizar:"
echo "1 Sumar"
echo "2 Restar"
echo "3 Dividir"
echo "4 Multiplicar"
echo "0 Salir"
echo ""

read -p "Ingresa la opcion: " opcion
if [[ $opcion -eq 0 ]]; then
	salir

elif [[ $opcion -ne 0 ]]; then
	read -p "Igresa el primer valor " valor1
	read -p "Ingresa el segundo valor " valor2

		case $opcion in
		1)
			suma
			;;
		2)
			resta
			;;
		3)
			div
			;;
		4)
			mult
			;;
		esac
else
	echo "Error"
fi
