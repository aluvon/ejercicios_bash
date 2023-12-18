#!/bin/bash
echo "Esta es la tabla de multiplicar de: '$1'"
inicio=1
while [[ $inicio -le 10 ]]
do
echo $(expr $inicio \* $1)
((inicio++))
done
