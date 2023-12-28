#!/bin/bash
echo "Con este script, buscare todos los ficheros en tu sistema que puedan ser modificados y te los guardare en un fichero llamado archivos_peligrosos.txt en tu hubicacion actual."
ficheros=$(ls -l / | grep "^[-*]*rwx") # busco y guardo en un fichero los resultados.
echo $ficheros >> temp.txt

resultado=$(cut -d " " -f9 temp.txt) # selecciono el nombre del fichero para luego usarlo con el comando find.

for i in $resultado;
do
	find / -name $i | grep $i >> Archivos_peligrosos.txt
done
rm temp.txt # elimino el fichero temp.txt, tuve que realizar elte fichero porque no pude lograr que el comando cut busque
	    # dentro de la variable $ficheros, no se como hacerlo.
