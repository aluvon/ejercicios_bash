#!/bin/bash
for i in `ls $1`;
	do
		if [[ -d "$1/$i" ]]; then
			echo "$1/$i -- es de tipo directorio."
		elif [[ -f "$1/$i" ]]; then
			echo "$1/$i -- es de tipo fichero."
		elif [[ -b "$1/$i" ]]; then
			echo "$1/$i -- es de tipo bloque."
		elif [[ -c "$1/$i" ]]; then
			echo "$1/$i -- es de tipo caracter."
		elif [[ -h "$1/$i" ]]; then
			echo "$1/$i -- es de tipo enlace simbolico."
		fi
	done
