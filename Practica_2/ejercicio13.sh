#!/bin/bash
#UT8 Practica 1
valor1=1
salida=0

function suma(){
	salida=$(($valor1 + $salida))
	resultado=$salida
	echo $salida
}

while [[ $valor1 -ne 0 ]]
do
	read -p "Ingresa un valor: " valor1
	echo "La suma es: "
	suma
done

