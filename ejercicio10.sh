#!/bin/bash
read -p "INgresa un numero y te dire si es un numero PRIMO: " primo
a=$(($primo / 1))
b=$(($primo / $primo))
echo "$primo dividido 1: "$a
echo "$primo dividido $primo: "$b
if [[ $a -eq $a ]] && [[ $b -eq 1 ]]; then
	echo "El numero '$primo' SI es un numero PRIMO"
else
	echo "El numero '$primo' NO es un numero PRIMO"
fi
