#!/bin/bash
#UT8 Practica 1
for (( a=1; a<=5; a++ ))
do
	for (( b=1; b<=a; b++ ))
	do
		echo -n "$b"
	done
	echo ""
done
