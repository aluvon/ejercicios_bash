#!/bin/bash
read -p "Ingresa un numero y te dire si es PAR o IMPAR: " numero
a=$numero%2

if [[ $a -eq 0 ]]; then
	echo "El numero '$numero' es un numero PAR."
else
	echo "EL numero '$numero' es un numero IMPAR."
fi
