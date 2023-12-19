#!/bin/bash
#UT8 Practica 1
echo "Ingresa el primer numero: $1"
echo "Ingresa el segundo numero: $2"
if [[ $1 -gt $2 ]]; then
	echo "El numero $1 es mayor que el numero $2"
else
	echo "El numero $2 es mayor que el numero $1"
fi
