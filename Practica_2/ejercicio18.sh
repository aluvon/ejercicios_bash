#!/bin/bash

busqueda=$(cut -d ":" -f1 /etc/passwd | grep "$1")
inicios=$(last "$1")
if [[ "$1" -eq "busqueda" ]]; then
	echo "El usuario $1 esta dado de alta en el sistema."
	echo "Su inicio de sesion: $inicios"
fi

