#!/bin/bash
#UT8 Practica 1
a=10
b=0
while [[ $adivina != $a ]] && [[ $adivina != $b ]]
do
	read -p "Hola, ingresa un numero entero y te dire si adivinas el numero que tengo oculto. Pista --> del 1 al 100: " adivina
	echo "Si quieres rendirte, inserta el CERO."
	if [[ $adivina -lt $a ]]; then
		echo "El numero $adivina es menor al oculto."
		echo
	elif [[ $adivina -gt $a ]]; then
		echo "El numero $adivina es mayor al oculto."
		echo
	elif [[ $adivina -eq $a ]]; then
		echo "Felicitaciones, este nuemro $adivina es el correcto."
		echo
	else
		echo "Error, has introducido un valor incorrecto."
	fi
done
