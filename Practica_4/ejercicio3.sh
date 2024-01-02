#!/bin/bash
#ESPECIFICAR LA RUTA DONDE BUSCAR EJEMPLO: ./ejemplo3.sh /
for i in `ls -R $1`;
do
	if [[ -f "$1/$i" ]]; then
		echo "$1/$i" >> temp.txt
	fi
done
ficheros=$(cat temp.txt)


for z in $ficheros;
do
	a=$(grep "Hack" $z)
        	if [[ $a -eq "Hack" ]]; then
    	    	echo "EL fichero: $z fue movido al directorio /root/cuarentena."
        	fi
	sudo mv $z /root/cuarentena/
done
rm temp.txt
