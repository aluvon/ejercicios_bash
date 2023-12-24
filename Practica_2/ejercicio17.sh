#!/bin/bash
if [[ -n "$1" && -n "$2" ]]; then
	if [[ -e "$1" && -f "$1"]]; then
		echo "El fichero ya existe no se puede reemplazar."
	else
		cp "$1" "/$2"
	fi
fi
