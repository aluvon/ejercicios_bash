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


















#resul=$(ls -l /home/admin01/Escritorio/ | grep "^-")
#echo $resul >> temp.txt

#for i in temp.txt;
#do

#	nombre=$(cut -d " " -f9 $i)
#	echo "Nombre del fichero: "$nombre

#	ruta=$(find / -name $nombre)
#	echo "Ruta del fichero: "$ruta

#	a=$(grep "Hack" $ruta)
#	echo "Resultado grep en el fichero: "$a

#	if [[ -f $ruta ]] && [[ $a -eq "Hack" ]]; then
#		echo "EL fichero: $ruta fue movido al directorio /root/cuarentena."
#		sudo mv $ruta /root/cuarentena/
 #       fi
#done
#rm temp.txt
